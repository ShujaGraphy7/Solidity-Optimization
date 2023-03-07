formula to calculate gas fee is
    (consumption gas * gasprice) * (etherPrice /10*9) 
1 eth = 10^9 gwei    
minimum gas consumption for ethereum transaction is 21000 gwai.

1. picking the storage variables
    define variables like large datatype in top and small datatypes list below and add same type of variable in groups.

2. use local variables instead of call public variables (like in Loops if we call public variable it costs more gas fee then define local variables and assign them to the value of public variable)

3. use bytes rather tha string or bytes[].

4. use of immutable and constant.
        Use immutable if you want to assign a permanent value at construction. Use constants if you already know the permanent value. Both get directly embedded in bytecode, saving SLOAD.

5. Use calldata instead of memory for function parameters.
    It is generally cheaper to load variables directly from calldata, rather than copying them to memory. Only use memory if the variable needs to be modified.

6. use custom derfined errors with revert instead of require.
    e.g.
    error Unauthorized(address caller);
    
    function add(uint256 _amount) public {
            if (msg.sender != owner
            revert Unauthorized(msg.sender)
        total += _amount
    } 

7. Use indexed events as they are less costly compared to non-indexed ones
    e.g.
    event Withdraw(uint256 indexed, address indexed);

    function withdraw(uint256 amount) public {
        emit Withdraw(amount, msg.sender);
    } 

8. Short-circuit with || and &&

    For || and && operators, the second case is not checked if the first case gives the result of the logical expression.  Put the lower-cost expression first so the higher-cost expression may be skipped (short-circuit).
