import React from 'react'
import NoPayType from './NoPayType';
import CreditCardPayType from './CreditCardPayType';
import DebitCardPayType from './DebitCardPayType';
import PayPalPayType from './PayPalPayType';


class PayTypeSelector extends React.Component {
    constructor(props) {
        super(props);
        this.onPayTypeSelected = this.onPayTypeSelected.bind(this);
        this.state = { selectedPayType: null };
    }

    onPayTypeSelected(event) {
        this.setState({ selectedPayType: event.target.value });
    }

    render() {
        let PayTypeCustomComponent = NoPayType;
        if (this.state.selectedPayType == "Credit Card") {
            PayTypeCustomComponent = CreditCardPayType;
        } else if (this.state.selectedPayType == "Debit Card") {
            PayTypeCustomComponent = DebitCardPayType;
        } else if (this.state.selectedPayType == "PayPal") {
            PayTypeCustomComponent = PayPalPayType;
        }
        return (
            <div>
                <div className="field">
                    <label htmlFor="order_pay_type">Pay type</label>
                    <select id="pay_type" onChange={this.onPayTypeSelected}
                        name="order[pay_type]">
                        <option value="">Choose a payment method</option>
                        <option value="Credit Card">Credit Card</option>
                        <option value="Debit Card">Debit Card</option>
                        <option value="PayPal">PayPal</option>
                    </select>
                </div>
                <PayTypeCustomComponent />
            </div>
        );
    }
}
export default PayTypeSelector