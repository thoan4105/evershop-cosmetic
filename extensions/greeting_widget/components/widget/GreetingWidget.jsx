import React from 'react';
import PropTypes from 'prop-types';

export default function GreetingWidget({ greetingWidget: { text, className }}) {
  return (
    <div className={className}>
      <h1>{text}</h1>
    </div>
  );
}

GreetingWidget.propTypes = {
  text: PropTypes.string,
  className: PropTypes.string
};

GreetingWidget.defaultProps = {
  text: '',
  className: ''
};

export const query = `
  query Query($settings: JSON) {
    greetingWidget(settings: $settings) {
      text
      className
    }
  }
`;

export const variables = `{
  settings: getWidgetSetting()
}`;