public class Swapper
{
    public object[] Arguments { get; private set; }
    
    public Swapper(object[] args)
    {
        Arguments = args;
    }
    
    public void SwapValues()
    {
        object temp1 = Arguments[0];
        Arguments[0] = Arguments[1];
        Arguments[1] = temp1;
    }
}