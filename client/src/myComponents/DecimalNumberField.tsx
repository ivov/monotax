import React from "react";
import { NumberField } from "react-admin";

const DecimalNumberField = (props: any) => (
  <NumberField {...props} options={{ minimumFractionDigits: 2 }} />
);

export default DecimalNumberField;
