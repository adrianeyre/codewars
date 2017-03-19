namespace Codewars {
  using System;
  public class DrivingLicense
  {
    public void Main()
    {
      Console.WriteLine("TEST");
    }
  }
}

DrivingLicense source = new DrivingLicense;
source.Driver();

//namespace Bank {
//  using System;
//  public class Account
//  {
//    private decimal balance;
//    public void Deposit(decimal amount)
//    {
//      balance += amount;
//    }

//    public void Withdraw(decimal amount)
//    {
//      balance -= amount;
//    }

//    public void TransferFunds(Account destination, decimal amount)
//    {
//      destination.Deposit(amount);
//      this.Withdraw(amount);
//    }

//    public decimal Balance { get { return balance; } }
//  }
//}
