import React from 'react'

class DebitCardPayType extends React.Component {
    render() {
        return (
            <div>
                <div className="field">
                    <label htmlFor="order_debit_card_number">Debit Card #</label> <input type="password"
                        name="order[debit_card_number]"
                        id="order_debit_card_number" /> </div>
                <div className="field">
                    <label htmlFor="order_expiration_date">Expiration Date</label> <input type="text"
                        name="order[expiration_date]" id="order_expiration_date" size="9"
                        placeholder="e.g. 03/20" />
                </div>
            </div>
        );
    }
}
export default DebitCardPayType