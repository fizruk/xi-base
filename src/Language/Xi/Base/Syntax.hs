module Language.Xi.Base.Syntax where

-- | Syntactic representation of constants.
data Constant
    = ConstBool Bool        -- ^ Boolean.
    | ConstInt Int          -- ^ Integer.
    | ConstChar Char        -- ^ Character.
    | ConstString String    -- ^ String literal.
    | ConstUnit             -- ^ Unit (void).

-- | Operations over booleans.
data BoolOperation
    = BoolAnd       -- ^ Logical AND.
    | BoolOr        -- ^ Logical OR.
    | BoolNot       -- ^ Logical NOT.

-- | Operations over integers.
data IntOperation
    = IntPlus       -- ^ Integer addition.
    | IntMinus      -- ^ Integer subtraction.
    | IntMult       -- ^ Integer multiplication.
    | IntDiv        -- ^ Integer division.
    | IntMod        -- ^ Integer reminder.

-- | Operations over strings.
data StringOperation
    = StringPlus    -- ^ String concatenation.

-- | Comparison operations.
data ComparisonOperation
    = CompLT    -- ^ Less than.
    | CompLE    -- ^ Less than or equal.
    | CompEQ    -- ^ Equal.
    | CompNE    -- ^ Not equal.
    | CompGE    -- ^ Greater than or equal.
    | CompGT    -- ^ Greater than.

-- | Syntactic expression.
data Expression
    = ExprBool      BoolExpression      -- ^ Boolean expression.
    | ExprInt       IntExpression       -- ^ Integer expression.
    | ExprChar      CharExpression      -- ^ Character expression.
    | ExprString    StringExpression    -- ^ String expression.
    | ExprUnit      UnitExpression      -- ^ Unit expression.

-- | Boolean expressions.
data BoolExpression
    = BoolExprConst      ConstBool                              -- ^ Boolean literal.
    | BoolExprOp         BoolOperation [BoolExpression]         -- ^ Operation over booleans.
    | BoolExprCompInt    ComparisonOperation [IntExpression]    -- ^ Integer comparison.
    | BoolExprCompChar   ComparisonOperation [CharExpression]   -- ^ Character comparison.
    | BoolExprCompString ComparisonOperation [StringExpression] -- ^ String comparison.

-- | Integer expressions.
data IntExpression
    = IntExprConst  ConstInt                        -- ^ Integer literal.
    | IntExprOp     IntOperation [IntExpression]    -- ^ Operation over integers.

-- | Character expressions.
data CharExpression
    = CharExprConst ConstChar

-- | String expressions.
data StringExpression
    = StringExprConst ConstString                           -- ^ String literal.
    | StringExprOp    StringOperation [StringExpression]    -- ^ Operation over strings.

-- | Unit (void) expressions.
data UnitExpression
    = UnitExprConst ConstUnit   -- ^ Unit literal.

