import { NativeModules } from 'react-native'

const { RNPureJwt } = NativeModules

export const sign = (token, secret, options = {}) =>
  RNPureJwt.showMockStudy()
  // RNPureJwt.sign(token, secret, options)

// export const decode = (token, secret, options = {}) =>
  // RNPureJwt.decode(token, secret, options)
