# Page header -- defined once, in context/lib

**Seated:** on the owner's word, for single strand and sameness across the living pages.
**Status:** Living. The definition is in [`context/lib/page-header.md`](../../context/lib/page-header.md). This page does
not restate it.

Every living page carries a header block the same way: a **Status:** line first, then **Stamp:** and **Room:** where
they apply. Style and voice lines follow **Status:** when a page writes in one. Dated testimony keeps the header it was
written with.

**The check.** `sh construction/page_header_check.sh` reports each living page whose first twelve lines have no **Status:**
line. It is a ratchet: it reports the count, and it does not fail the tree. Bring the count down when a page is touched,
not in a sweep.
