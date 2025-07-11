import React, { useEffect, useState } from "react";
import PropTypes from "prop-types";
import {
  useCheckout,
  useCheckoutDispatch
} from "@components/common/context/checkout";
import { useQuery } from "urql";

const cartQuery = `
  query Query($cartId: String) {
    cart(id: $cartId) {
      billingAddress {
        cartAddressId
        fullName
        postcode
        telephone
        country {
          name
          code
        }
        province {
          name
          code
        }
        city
        address1
        address2
      }
      shippingAddress {
        cartAddressId
        fullName
        postcode
        telephone
        country {
          name
          code
        }
        province {
          name
          code
        }
        city
        address1
        address2
      }
      customerEmail
    }
  }
`;

const generateCode = (length = 6) => {
  const chars = "ABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789";
  let code = "";
  for (let i = 0; i < length; i++) {
    code += chars[Math.floor(Math.random() * chars.length)];
  }
  return code;
};

const formatTime = (seconds) => {
  const m = Math.floor(seconds / 60)
    .toString()
    .padStart(2, "0");
  const s = (seconds % 60).toString().padStart(2, "0");
  return `${m}:${s}`;
};

export default function CheckoutForm({
  createPaymentSessionApi,
  returnUrl,
  total,
  pollingPaymentStatusUrl
}) {
  const [paymentCode, setPaymentCode] = useState(`TH${  generateCode(6)}`);
  const {
    steps,
    cartId,
    orderId,
    orderIntegerId,
    orderPlaced,
    paymentMethods
  } = useCheckout();
  const { placeOrder, setError } = useCheckoutDispatch();
  const [expiresIn, setExpiresIn] = useState(300);
  const [copiedField, setCopiedField] = useState(null);
  const [isPaid, setIsPaid] = useState(false);

  useEffect(() => {
    const interval = setInterval(() => {
      setPaymentCode(`TH${  generateCode(6)}`);
    }, 5 * 60 * 1000);

    return () => clearInterval(interval);
  }, []);

  useEffect(() => {
    const countdown = setInterval(() => {
      setExpiresIn((prev) => {
        if (prev <= 1) {
          return 0;
        }
        return prev - 1;
      });
    }, 1000);

    return () => clearInterval(countdown);
  }, []);

  const [result] = useQuery({
    query: cartQuery,
    variables: {
      cartId
    },
    pause: orderPlaced === true
  });

  const waitForPayment = async (orderId) => {
    const maxTries = 5;
    let tries = 0;

    return new Promise((resolve, reject) => {
      const interval = setInterval(async () => {
        tries++;

        const res = await fetch(
          `${pollingPaymentStatusUrl}?order_id=${orderId}&payment_code=${paymentCode}`
        );
        const data = await res.json();

        if (data.status === "paid") {
          clearInterval(interval);
          resolve("success");
        } else if (tries >= maxTries) {
          clearInterval(interval);
          window.location.href = `${returnUrl}?order_id=${orderId}`;
          reject("failed or timeout");
        }
      }, 2000);
    });
  };

  useEffect(() => {
    if (orderIntegerId && orderPlaced) {
      const createAndWait = async () => {
        try {
          const res = await fetch(createPaymentSessionApi, {
            method: "POST",
            headers: {
              "Content-Type": "application/json"
            },
            body: JSON.stringify({
              cart_id: cartId,
              order_id: orderIntegerId.toString(),
              transaction_code: paymentCode
            })
          });

          const data = await res.json();

          if (data.error) {
            toast.error("Có lỗi xảy ra. Vui lòng thử lại sau.");
          } else {
            await waitForPayment(orderId);
            setIsPaid(true);
          }
        } catch (err) {
          console.error("Error creating payment session:", err);
        }
      };

      createAndWait();
    }
  }, [orderIntegerId, orderPlaced]);

  useEffect(() => {
    if (isPaid) {
      const timer = setTimeout(() => {
        window.location.href = `${returnUrl}?order_id=${orderId}`;
      }, 600);

      return () => clearTimeout(timer);
    }
  }, [isPaid]);

  useEffect(() => {
    const pay = async () => {
      await placeOrder();
    };
    if (steps.every((step) => step.isCompleted)) {
      pay();
    }
  }, [steps]);

  const content = `${paymentCode} mehabeauty`;
  const bankId = "mbbank";
  const accountNumber = "0394195303";
  const accountName = "Dam Thi Mai";
  const urlQrCode = `https://img.vietqr.io/image/${bankId}-${accountNumber}-compact2.jpg?amount=${total}&addInfo=${content}&accountName=${accountName}`;

  const handleCopy = (text, field) => {
    navigator.clipboard.writeText(text).then(() => {
      setCopiedField(field);
      setTimeout(() => setCopiedField(null), 2000);
    });
  };

  const qrCodePaymentMethod = paymentMethods.find(
    (method) => method.code === "qrCode" && method.selected === true
  );

  if (!qrCodePaymentMethod) {
    return null;
  }

  return (
    <>
      <div className="qr-details mb-2 space-y-2 mb-4">
        <div className="text-sm text-red-600 font-semibold">
          Mã sẽ hết hạn sau: {formatTime(expiresIn)}
        </div>
        <div className="flex items-baseline gap-2">
          <strong className="qr-detail-label">Ngân hàng:</strong>
          <span className="text-sm">{bankId}</span>
          <button
            type="button"
            className="text-blue-500 underline text-sm copy-icon"
            onClick={() => handleCopy(bankId, "bankId")}
          >
            <span>
              <span>
                {copiedField === "bankId" ? (
                  <svg
                    xmlns="http://www.w3.org/2000/svg"
                    width="1em"
                    height="1em"
                    fill="none"
                    viewBox="0 0 24 24"
                    stroke="green"
                    strokeWidth="2"
                    strokeLinecap="round"
                    strokeLinejoin="round"
                  >
                    <circle cx="12" cy="12" r="10" stroke="green" fill="none" />
                    <path d="M9 12l2 2l4 -4" />
                  </svg>
                ) : (
                  <svg
                    width="1em"
                    height="1em"
                    viewBox="0 0 24 24"
                    fill="none"
                    xmlns="http://www.w3.org/2000/svg"
                  >
                    <path
                      d="M14.3933 22.5712H6.50649C4.68497 22.5712 3.20312 21.0894 3.20312 19.2679V8.07771C3.20312 6.25619 4.68497 4.77434 6.50649 4.77434H14.3933C16.2148 4.77434 17.6966 6.25619 17.6966 8.07771V19.2679C17.6966 21.0894 16.2148 22.5712 14.3933 22.5712ZM6.50649 6.42603C5.59579 6.42603 4.85481 7.16701 4.85481 8.07771V19.2679C4.85481 20.1786 5.59579 20.9195 6.50649 20.9195H14.3933C15.304 20.9195 16.045 20.1786 16.045 19.2679V8.07771C16.045 7.16701 15.304 6.42603 14.3933 6.42603H6.50649ZM21 17.2033V4.73305C21 2.91154 19.5182 1.42969 17.6966 1.42969H8.5298C8.07365 1.42969 7.70396 1.79938 7.70396 2.25553C7.70396 2.71168 8.07365 3.08137 8.5298 3.08137H17.6966C18.6073 3.08137 19.3483 3.82236 19.3483 4.73305V17.2033C19.3483 17.6594 19.718 18.0291 20.1742 18.0291C20.6303 18.0291 21 17.6594 21 17.2033Z"
                      fill="#262626"
                    />
                  </svg>
                )}
              </span>
            </span>
          </button>
        </div>
        <div className="flex items-baseline gap-2">
          <strong className="qr-detail-label">Nội dung:</strong>
          <span className="text-sm">{content}</span>
          <button
            type="button"
            className="text-blue-500 underline text-sm  copy-icon"
            onClick={() => handleCopy(content, "content")}
          >
            <span>
              <span>
                {copiedField === "content" ? (
                  <svg
                    xmlns="http://www.w3.org/2000/svg"
                    width="1em"
                    height="1em"
                    fill="none"
                    viewBox="0 0 24 24"
                    stroke="green"
                    strokeWidth="2"
                    strokeLinecap="round"
                    strokeLinejoin="round"
                  >
                    <circle cx="12" cy="12" r="10" stroke="green" fill="none" />
                    <path d="M9 12l2 2l4 -4" />
                  </svg>
                ) : (
                  <svg
                    width="1em"
                    height="1em"
                    viewBox="0 0 24 24"
                    fill="none"
                    xmlns="http://www.w3.org/2000/svg"
                  >
                    <path
                      d="M14.3933 22.5712H6.50649C4.68497 22.5712 3.20312 21.0894 3.20312 19.2679V8.07771C3.20312 6.25619 4.68497 4.77434 6.50649 4.77434H14.3933C16.2148 4.77434 17.6966 6.25619 17.6966 8.07771V19.2679C17.6966 21.0894 16.2148 22.5712 14.3933 22.5712ZM6.50649 6.42603C5.59579 6.42603 4.85481 7.16701 4.85481 8.07771V19.2679C4.85481 20.1786 5.59579 20.9195 6.50649 20.9195H14.3933C15.304 20.9195 16.045 20.1786 16.045 19.2679V8.07771C16.045 7.16701 15.304 6.42603 14.3933 6.42603H6.50649ZM21 17.2033V4.73305C21 2.91154 19.5182 1.42969 17.6966 1.42969H8.5298C8.07365 1.42969 7.70396 1.79938 7.70396 2.25553C7.70396 2.71168 8.07365 3.08137 8.5298 3.08137H17.6966C18.6073 3.08137 19.3483 3.82236 19.3483 4.73305V17.2033C19.3483 17.6594 19.718 18.0291 20.1742 18.0291C20.6303 18.0291 21 17.6594 21 17.2033Z"
                      fill="#262626"
                    />
                  </svg>
                )}
              </span>
            </span>
          </button>
        </div>
        <div className="flex items-baseline gap-2">
          <strong className="qr-detail-label">Số tài khoản:</strong>
          <span className="text-sm">{accountNumber}</span>
          <button
            type="button"
            className="text-blue-500 underline text-sm copy-icon"
            onClick={() => handleCopy(accountNumber, "account")}
          >
            <span>
              {copiedField === "account" ? (
                <svg
                  xmlns="http://www.w3.org/2000/svg"
                  width="1em"
                  height="1em"
                  fill="none"
                  viewBox="0 0 24 24"
                  stroke="green"
                  strokeWidth="2"
                  strokeLinecap="round"
                  strokeLinejoin="round"
                >
                  <circle cx="12" cy="12" r="10" stroke="green" fill="none" />
                  <path d="M9 12l2 2l4 -4" />
                </svg>
              ) : (
                <svg
                  width="1em"
                  height="1em"
                  viewBox="0 0 24 24"
                  fill="none"
                  xmlns="http://www.w3.org/2000/svg"
                >
                  <path
                    d="M14.3933 22.5712H6.50649C4.68497 22.5712 3.20312 21.0894 3.20312 19.2679V8.07771C3.20312 6.25619 4.68497 4.77434 6.50649 4.77434H14.3933C16.2148 4.77434 17.6966 6.25619 17.6966 8.07771V19.2679C17.6966 21.0894 16.2148 22.5712 14.3933 22.5712ZM6.50649 6.42603C5.59579 6.42603 4.85481 7.16701 4.85481 8.07771V19.2679C4.85481 20.1786 5.59579 20.9195 6.50649 20.9195H14.3933C15.304 20.9195 16.045 20.1786 16.045 19.2679V8.07771C16.045 7.16701 15.304 6.42603 14.3933 6.42603H6.50649ZM21 17.2033V4.73305C21 2.91154 19.5182 1.42969 17.6966 1.42969H8.5298C8.07365 1.42969 7.70396 1.79938 7.70396 2.25553C7.70396 2.71168 8.07365 3.08137 8.5298 3.08137H17.6966C18.6073 3.08137 19.3483 3.82236 19.3483 4.73305V17.2033C19.3483 17.6594 19.718 18.0291 20.1742 18.0291C20.6303 18.0291 21 17.6594 21 17.2033Z"
                    fill="#262626"
                  />
                </svg>
              )}
            </span>
          </button>
        </div>
      </div>
      <span>Hoặc: </span>
      <div className="qr-image-wrapper">
        <div className="qr-image">
          <img src={urlQrCode} alt="QR Code" />
          {isPaid && (
            <div className="qr-overlay">
              <svg
                className="qr-check"
                xmlns="http://www.w3.org/2000/svg"
                viewBox="0 0 24 24"
              >
                <path d="M20.285 6.709l-11.315 11.316-5.657-5.658 1.414-1.414 4.243 4.243 9.9-9.899z" />
              </svg>
            </div>
          )}
        </div>
        <p className="qr-note">
          (*Chú ý: Vui lòng chuyển khoản đúng nội dung để được xác nhận thanh
          toán!)
        </p>
      </div>
    </>
  );
}

CheckoutForm.propTypes = {
  createPaymentSessionApi: PropTypes.string.isRequired,
  returnUrl: PropTypes.string.isRequired,
  total: PropTypes.number.isRequired,
  pollingPaymentStatusUrl: PropTypes.string.isRequired
};
