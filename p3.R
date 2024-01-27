# calculate the fine for the number of days overdue 

calaculate_fine<-function(days_overdue)
{
  if(days_overdue<=7)
  {
    fine =0
  }
  else if(days_overdue>=8 && days_overdue<=15)
  {
    fine_per-day =2
    fine = (days_overdue-7)*fine_per_day
    
  }
  else if(days_overdue>=16&&days_overdue<=30)
  {
    fine_per_day=3
    fine=8*2+(days_overdue-15)*fine_per_day
  }
  else if(days_overdue>=31&& days_overdue<=50)
  {
    fine_per_day=5
    fine = 8*2+15*3+(days_overdue-30)*fine_per_day
  }
  
  else if(days_overdue>=50)
  {
    fine_cap =50
    fine = fine_cap
    print(" Contact library")
  }
  return(fine)
  
}

days_overdue = as.integer(readline("  Enter the nummber of days over due :"))

# calculate the fine amount 
fine_amount<- calaculate_fine(days_overdue)

# display the information 
cat(" Fine amount: ", fine_amount, "\n")
if(fine_amount==0)
{  cat(" No fine. Thankyou for returning the book on time ")
}else
{
  if(days_overdue>50){
    cat(" Fine exceeds the maxiamum cap")
  }else
  {
    cat(" Please contact the libraray")
  }
}

