import React from 'react'

class PayPalPayType extends React.Component {
    render() {
        return (
            <div>
                <div className="field">
                    <label htmlFor="order_paypal_acct_number">PayPal Account #</label> <input type="password"
                        name="order[order_paypal_acct_number]"
                        id="order_paypal_acct_number" /> </div>
            </div>
        );
    }
}
export default PayPalPayType