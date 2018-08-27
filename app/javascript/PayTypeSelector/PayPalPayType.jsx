import React from 'react'

class PayPalPayType extends React.Component {
    render() {
        return (
            <div>
                <div className="field">
                    <label htmlFor="order_paypal_username">PayPal Username</label> <input type="text"
                        name="order[order_paypal_username]"
                        id="order_paypal_username" /> </div>
                <div className="field">
                    <label htmlFor="order_paypal_password">PayPal Password</label> <input type="password"
                        name="order[order_paypal_password]"
                        id="order_paypal_password" /> </div>
            </div>
        );
    }
}
export default PayPalPayType