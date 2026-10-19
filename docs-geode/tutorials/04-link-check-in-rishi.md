# Checking the links in this tree, with Rishi

**Style:** Jena at the Door setting, in the Radha style from `context/styles/radha.md`. The voice is in `context/voices/jena.md`.
**Status:** Tutorial. It explains a small script for a reader who may be meeting Rishi for the first time.

**Shed:** the Rishi driver `construction/links.rish` and its helper `construction/links_page.sh` were shed under the checkpoint at `b1fd83e`. The check now runs as `construction/links.sh`. The steps below record how the driver worked, and they describe code that is no longer in the tree.

A link in a living page is a promise that its target exists. This tutorial shows how the tree keeps that promise,
and how the check is written in Rishi, the tree's own scripting language.

## What you will run

You will run one command, `sh construction/links.sh`. It checks every living page, prints each broken link by page and target, and exits with status one if any link is broken. It does not stop at the first one.

## Step 1: know which pages are living

A living page is one that is edited in place. Dated records are not checked, because they keep the words they were
written with. The list is made by `construction/living_pages.sh`, which filters out session logs, dated pages, and refusals. Run `sh construction/living_pages.sh` to see it.

## Step 2: run the check

Run `sh construction/links.sh`. It reads the living pages, and for each one it reads the link targets, then tests
whether each target exists.

## Step 3: read the result

A clean run ends with a line that counts the links checked and reads zero broken, and it exits with status zero. A
broken link prints a line that names the page and the target, and the run exits with status one.

## The history of the Rishi driver

The check was first written as a Rishi driver, `construction/links.rish`, which passed the pages in batches of fifty,
because a Rishi run takes at most sixty-four arguments. That driver and its helper were shed under the checkpoint at
`b1fd83e`, recorded in `construction/CHECKPOINTS.md`.

## Why a shell helper does the per-page check

This build of Rishi has no split function for text and no counter, and it does not accept command substitution inside
a quoted argument. So the check for one page lives in `construction/links_page.sh`, a short shell step. Rishi reads
only its exit status, which is the part Rishi needs to decide. The division is deliberate: Rishi does the loop and the
assertion, and the shell does the text work that Rishi cannot yet do.

## Try it

Copy the pages to a scratch folder, plant a broken link in one of them, and run `sh construction/links.sh` on that
folder, since the script takes the root to check as its argument. Watch it name the broken link and exit with status one.
Then remove the link and watch it exit with status zero.
