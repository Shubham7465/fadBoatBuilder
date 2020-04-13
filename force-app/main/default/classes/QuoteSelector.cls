public class QuoteSelector {

    public Static List<Quote__c> queryQuoteFromId(String quoteId){
        
        List<Quote__c> listQuoteToReturn = [SELECT b.BOATBUILDING__ACV_FORM__r.Name, b.Account_Name__r.Name, 
                                            b.Contact_Name__r.Name, b.RecordTypeId, b.OwnerId, b.Name,  b.LastModifiedDate, 
                                            b.LastModifiedById, b.Id, b.CreatedDate, b.CreatedById, 
                                            b.BOATBUILDING__Transmission_Gearbox_SN__c, b.BOATBUILDING__Trailer__c, 
                                            b.BOATBUILDING__Trailer_Dealer_Price__c, b.BOATBUILDING__Total_Price_Quote__c, 
                                            b.BOATBUILDING__Test_2__c, b.BOATBUILDING__Tax__c, b.BOATBUILDING__Syncing__c, 
                                            b.BOATBUILDING__Store_Location__c, b.BOATBUILDING__Status__c, 
                                            b.BOATBUILDING__State__c, b.BOATBUILDING__Sold_Boat_Account__c, 
                                            b.BOATBUILDING__Shipping_And_Handling__c, b.BOATBUILDING__Ship_To__c, 
                                            b.BOATBUILDING__Ship_To_Name__c, b.BOATBUILDING__Related_to_Product__c, 
                                            b.BOATBUILDING__Related_to_Order__c, b.BOATBUILDING__Quote_Trailer_ACV__c, 
                                            b.BOATBUILDING__Quote_Your_Price_Negotiation__c, 
                                            b.BOATBUILDING__Quote_Your_Price_Formula__c, 
                                            b.BOATBUILDING__Quote_Trailer_Sales_Tax__c, 
                                            b.BOATBUILDING__Quote_Trailer_Sales_Tax_Negotiation__c, 
                                            b.BOATBUILDING__Quote_Trailer_Reg_Fee__c, 
                                            b.BOATBUILDING__Quote_Trailer_Reg_Fee_Negotiation__c, 
                                            b.BOATBUILDING__Quote_Trailer_Allowance__c, 
                                            b.BOATBUILDING__Quote_Trailer_Allowance_Negotiation__c, 
                                            b.BOATBUILDING__Quote_Trailer_Allowance_Calculated__c, 
                                            b.BOATBUILDING__Quote_Trailer_ACV_Negotiation__c, 
                                            b.BOATBUILDING__Quote_Trade_Payoff__c, b.BOATBUILDING__Quote_Trade_Allowance__c, 
                                            b.BOATBUILDING__Quote_Trade_Allowance_Negotiation__c, 
                                            b.BOATBUILDING__Quote_Trade_ACV__c, b.BOATBUILDING__Quote_Trade_ACV_Negotiation__c,
                                            b.BOATBUILDING__Quote_Total_Price_Calculated__c, 
                                            b.BOATBUILDING__Quote_Total_Over_Allowance_Calculated__c, 
                                            b.BOATBUILDING__Quote_Total_MSRP__c, 
                                            b.BOATBUILDING__Quote_Total_Amount_Financed_Calculated__c, 
                                            b.BOATBUILDING__Quote_To_Name__c, b.BOATBUILDING__Quote_To_Address__c, 
                                            b.BOATBUILDING__Quote_Term__c, b.BOATBUILDING__Quote_Sale_Price__c, 
                                            b.BOATBUILDING__Quote_Rate__c, b.BOATBUILDING__Quote_Payment__c, 
                                            b.BOATBUILDING__Quote_Payment_Negotiation__c, b.BOATBUILDING__Quote_Number__c, 
                                            b.BOATBUILDING__Quote_Net_Selling_Price_Calculated__c, 
                                            b.BOATBUILDING__Quote_MSRP_Trailer_Price__c, b.BOATBUILDING__Quote_Cost_Clone__c,
                                            b.BOATBUILDING__Quote_MSRP_Trailer_Price_Negotiation__c, 
                                            b.BOATBUILDING__Quote_MSRP_Boat_Price__c, b.BOATBUILDING__Quote_Down_Payment__c,
                                            b.BOATBUILDING__Quote_Doc_Fee__c, b.BOATBUILDING__Quote_Deal_Margin__c, 
                                            b.BOATBUILDING__Quote_Boat_Trade_Over_Allowance_Calculat__c, 
                                            b.BOATBUILDING__Quote_Boat_Sales_Tax_Negotiation__c, 
                                            b.BOATBUILDING__Quote_Boat_Sales_Tax_Calculated__c, 
                                            b.BOATBUILDING__Quote_Boat_Reg_Fee__c, b.BOATBUILDING__QuoteHiddenBox__c, 
                                            b.BOATBUILDING__Phone__c, b.BOATBUILDING__No_Trailer__c, b.BOATBUILDING__NetSalesTax__c, 
                                            b.BOATBUILDING__Negotiation_Trailer_ACV__c, b.BOATBUILDING__Negotiation_Trade_Payoff__c,
                                            b.BOATBUILDING__Negotiation_MSRP_Boat_Price__c, b.BOATBUILDING__Mapped_Trailer_VIN__c, 
                                            b.BOATBUILDING__Mapped_HIN__c, b.BOATBUILDING__Mapped_Engine_SN__c, 
                                            b.BOATBUILDING__Mapped_Boat_Length__c, b.BOATBUILDING__MSRP_Boat_Price_Negotiation__c, 
                                            b.BOATBUILDING__Lock_Record__c, b.BOATBUILDING__Grand_Total__c, b.BOATBUILDING__Fax__c, 
                                            b.BOATBUILDING__Expiration_Date__c, b.BOATBUILDING__Engine__c, 
                                            b.BOATBUILDING__Engine_Dealer_Price__c, b.BOATBUILDING__Email__c, b.BOATBUILDING__Discount__c, 
                                            b.BOATBUILDING__Discount_On_Quote__c, b.BOATBUILDING__Description__c, 
                                            b.BOATBUILDING__Dealer_Price_Total__c, b.BOATBUILDING__Dealer_Disclaimer__c, 
                                            b.BOATBUILDING__Dealer_Comments_and_Notes__c, b.BOATBUILDING__Costline_Sell_Price__c, 
                                            b.BOATBUILDING__Costline_Divider__c, b.BOATBUILDING__Contact_Name__c, b.BOATBUILDING__Commission__c, 
                                            b.BOATBUILDING__CO_Buyer_Name__c, b.BOATBUILDING__Booked_Sale_Price__c,
                                            b.BOATBUILDING__Booked_ACV__c, b.BOATBUILDING__Boat_Sold_By__c, 
                                            b.BOATBUILDING__Boat_Sales_Tax2__c, b.BOATBUILDING__Boat_Sales_Tax2_Backend__c,
                                            b.BOATBUILDING__Boat_Costline__c, b.BOATBUILDING__Bill_To__c, 
                                            b.BOATBUILDING__Bill_To_Name__c, b.BOATBUILDING__Additional_To__c, 
                                            b.BOATBUILDING__Additional_To_Name__c, b.BOATBUILDING__Account_Name__c, 
                                            b.BOATBUILDING__APPROVED_ACV__c, b.BOATBUILDING__ACV_FORM__c 
                                            FROM BOATBUILDING__Quote__c b WHERE Id =: quoteId];
       
        return listQuoteToReturn;
    }
}