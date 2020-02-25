export const padWithZeros = (number: string) => {
  const pad = "0000";
  return pad.substring(0, pad.length - number.length) + number;
};
