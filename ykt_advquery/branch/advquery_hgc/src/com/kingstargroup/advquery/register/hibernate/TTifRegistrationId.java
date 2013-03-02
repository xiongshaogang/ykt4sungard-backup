package com.kingstargroup.advquery.register.hibernate;



/**
 * TTifRegistrationId generated by MyEclipse - Hibernate Tools
 */

public class TTifRegistrationId  implements java.io.Serializable {


    // Fields    

     private long custId;
     private long regId;


    // Constructors

    /** default constructor */
    public TTifRegistrationId() {
    }

    
    /** full constructor */
    public TTifRegistrationId(long custId, long regId) {
        this.custId = custId;
        this.regId = regId;
    }
    

   
    // Property accessors

    public long getCustId() {
        return this.custId;
    }
    
    public void setCustId(long custId) {
        this.custId = custId;
    }

    public long getRegId() {
        return this.regId;
    }
    
    public void setRegId(long regId) {
        this.regId = regId;
    }
   



   public boolean equals(Object other) {
         if ( (this == other ) ) return true;
		 if ( (other == null ) ) return false;
		 if ( !(other instanceof TTifRegistrationId) ) return false;
		 TTifRegistrationId castOther = ( TTifRegistrationId ) other; 
         
		 return (this.getCustId()==castOther.getCustId())
 && (this.getRegId()==castOther.getRegId());
   }
   
   public int hashCode() {
         int result = 17;
         
         result = 37 * result + (int) this.getCustId();
         result = 37 * result + (int) this.getRegId();
         return result;
   }   





}