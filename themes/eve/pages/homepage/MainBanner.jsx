import React, { useEffect } from 'react';
import './MainBanner.scss';
import AOS from 'aos';

function MainBanner() {
	useEffect(() => {
		AOS.init({
			duration: 1000,
			once: true
		});
	}, []);

	return (
		<div>
			<section className='intro'>
				<div className='intro-container'>
					<h1 className='brand-name'>MEHA BEAUTY</h1>
					<p className='brand-description'>
						MEHA Beauty là thương hiệu mỹ phẩm thiên nhiên, tiên phong phát
						triển các sản phẩm chăm sóc da chiết xuất từ gạo sạch – an toàn,
						lành tính và thân thiện với môi trường.
						<br />
						<br />
						Chúng tôi tin rằng vẻ đẹp chân thật nhất đến từ thiên nhiên và sự
						thuần khiết. Mỗi sản phẩm MEHA là kết tinh giữa tri thức bản địa và
						công nghệ mỹ phẩm sạch, không hóa chất độc hại, minh bạch về thành
						phần – chăm sóc làn da nhẹ dịu, hiệu quả và bền vững.
						<br />
						<br />
						<strong>
							MEHA – Khi vẻ đẹp bắt đầu từ hạt gạo, và lan tỏa thành lối sống
							xanh.
						</strong>
					</p>
				</div>
			</section>
		</div>
	);
}

export default MainBanner;

export const layout = {
	areaId: 'content',
	sortOrder: 10
};
