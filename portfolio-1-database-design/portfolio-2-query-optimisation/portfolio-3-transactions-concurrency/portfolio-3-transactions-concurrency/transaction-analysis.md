# SwiftCart Transaction and Concurrency Analysis

## COMMIT Example

A transaction was started and the inventory quantity for a product was reduced.

The `COMMIT` statement permanently saved the change to the database.

## ROLLBACK Example

A second transaction reduced the inventory quantity temporarily.

The `ROLLBACK` statement cancelled the transaction, so the change was not permanently saved.

## Concurrency and Locking

Two separate database sessions attempted to update the same inventory record.

Session 1 started a transaction and updated the inventory record without committing immediately.

Session 2 then attempted to update the same row. MySQL prevented the second transaction from modifying the row while Session 1 held the lock.

The second session eventually returned:

`ERROR 1205 (HY000): Lock wait timeout exceeded`

This demonstrates MySQL's row-level locking mechanism and shows how concurrency control protects data from conflicting simultaneous updates.

## Conclusion

The exercise demonstrated transaction durability using `COMMIT`, transaction cancellation using `ROLLBACK`, and concurrency control through row-level locking.
