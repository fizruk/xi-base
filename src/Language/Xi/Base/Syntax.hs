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

