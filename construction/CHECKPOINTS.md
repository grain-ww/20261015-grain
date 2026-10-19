# Checkpoints -- the way back before a rewrite

**Status:** Living -- the append-only ledger of walk-backs.

Newest first. Append-only. A checkpoint records the state before a history rewrite, so it can be found again.

## 20261019.105239 -- ww walk-back for the publish of the batch 006 cleanup

- **Walk-back head (ww):** `6e99568bff`. The ww head this publish replaces.
- **Source head (local):** `7c15bd04e4`. The tree the publish snapshots.
- **Reason:** the owner's yes, publish to ww, after the batch 006 cleanup landed on xy.
- **Named word:** yes.

## 20261019.103955 -- ww walk-back for the publish after the PDF removal

- **Walk-back head (ww):** `40b61dbebe`. The ww head this publish replaces.
- **Source head (local):** `d8b734308e`. The tree the publish snapshots.
- **Reason:** the owner's yes, publish to ww, after the large study PDFs left the tree and history and the session logs were committed.
- **Named word:** yes.

## 20261019.103718 -- xy walk-back before the deep debride of the large study PDFs

- **Walk-back head (xy):** `1cf271ffc9`. The xy main head before the rewrite; every commit before it is one `git show` away.
- **Walk-back head (local):** `9a6dfc61ef`. The local HEAD before the debride commit and the rewrite.
- **Swept:** the four large PDFs under tablecloth/study (the full 595-page scan is untracked; the Brihat scan and ten Taylor parts are tracked), moved to tablecloth/private, then removed from every commit with git filter-repo.
- **Reason:** the owner chose the full run with a checkpoint first, to lower the project download size. The ww snapshot still holds the old PDFs in its own history and waits for a separate yes.
- **Named word:** the owner chose the full run with checkpoint first.

## 20261019.011301 -- ww walk-back for the publish of the incense tree, the fourth time

- **Walk-back head (ww):** `60c41f33f1`. The ww head this publish replaces.
- **Source head (local):** `754e6db822`. The tree the publish snapshots.
- **Reason:** the owner's yes, publish to ww, after the Brihat batch 001 draft and the closed batch 011 were committed.
- **Named word:** yes.

## 20261018.221822 -- ww walk-back for the publish of the incense tree, the third time

- **Walk-back head (ww):** `5c2fa2ca9b`. The ww head this publish replaces.
- **Source head (local):** `675cbaf6b1`. The tree the publish snapshots.
- **Reason:** the owner's yes, publish to ww, after the Taylor batch 004 reading one.
- **Named word:** yes.

## 20261018.211045 -- ww walk-back for the publish of the incense tree, the second time

- **Walk-back head (ww):** `6beddf9c27`. The ww head this publish replaces.
- **Source head (local):** `5f1a20f365`. The tree the publish snapshots.
- **Reason:** the owner's yes, publish to ww, given after the n spell and the learnings note.
- **Named word:** yes.

## 20261018.205229 -- ww walk-back for the publish of the incense tree

- **Walk-back head (ww):** `466ab9a066`. The ww head this publish replaces.
- **Source head (local):** `6e4f5a4e5c`. The tree the publish snapshots.
- **Reason:** the owner's yes, publish it to ww too, after the seed publish from 20260618.
- **Named word:** publish it to ww too.

## 20261018.164741 -- ww walk-back for the publish of the full snapshot, in the guard's form

- **Walk-back head (ww):** `4a74a6964c`. The ww head the full-snapshot publish replaces. The row above names the same head in short form, which the publish guard does not match.
- **Source head (local):** `63dd0aaeec`. The tree the publish snapshots.
- **Reason:** the owner's yes to publish the full snapshot, given after the study room was reviewed.
- **Named word:** the owner's yes, publish the full snapshot.

## 20261018.170932 -- row one of the shed list, before the cut

- **Walk-back head:** `a977ee0cfc`. The tree before the shed of `yonder/constel/LADDER.md`. The file is recoverable at this head.
- **Reason:** the owner's shed of row one, after the successor question was answered: no successor keeps the rung reasoning.
- **Named word:** the owner's request, shed row one.

## 20261018.171055 -- ww walk-back for the next w run, after the shed

- **Walk-back head (ww):** `5e856cbb05`. The ww head the next w run replaces. The published snapshot at this head is the one with the study room and the author fix.
- **Source head (local):** `9fa6de8569`. The tree the next w run snapshots, which includes the shed of row one.
- **Reason:** the walk-back the next publish needs, written before it. Nothing is published by this row.
- **Named word:** the owner's request, i b.

## 20261018.173132 -- ww walk-back for the publish after the study room was made public

- **Walk-back head (ww):** `e895cb2ac7`. The ww head the publish replaces, the snapshot made by the e895cb2 publish.
- **Source head (local):** `b0b252d0a4`. The tree the publish snapshots.
- **Reason:** the owner's yes to publish, written before the publish as the ledger rule asks.
- **Named word:** the owner's yes.

## 20261018.180957 -- ww walk-back for the publish of the decoupled audit and modern drafts

- **Walk-back head (ww):** `b244315ffe`. The ww head the publish replaces.
- **Source head (local):** `1d1a5473c2`. The tree the publish snapshots.
- **Reason:** the owner's publish the snapshot, written before the publish as the ledger rule asks.
- **Named word:** the owner's request, publish the snapshot.

## 20261018.183159 -- ww walk-back for the publish of nova and the batch work

- **Walk-back head (ww):** `6ddbb17c49`. The ww head the publish replaces.
- **Source head (local):** `417081314c`. The tree the publish snapshots.
- **Reason:** the owner's yes to publish, written before the publish as the ledger rule asks.
- **Named word:** the owner's yes.

## 20261018.154118 -- ww walk-back for the w run after the audit

- **Walk-back head (ww):** `4a74a69`. The ww head the w run replaces. The snapshot at this head holds the state published by the i o w a run, and xy holds the full history.
- **Source head (local):** `e8fe0d7f6f`. The tree the w run snapshots.
- **Reason:** the owner's o w a. The row is written before the publish, as the ledger rule asks.
- **Named word:** the owner's request, o w a.

## 20261018.145451 -- ww walk-back for the i o w a run

- **Walk-back head (ww):** `71971ecdc8`. The ww head the i o w a run replaces. The snapshot at this head holds the state published by the earlier run, and xy holds the full history.
- **Reason:** the owner's i o w a. The row is written before the publish, as the ledger rule asks.
- **Named word:** the owner's request, i o w a.

## 20261018.145307 -- shed prep re-read at the current head

- **Walk-back head:** `474cf6d929`. Six prep rows stand present and five stand absent, the five shed under b1fd83e. The list's header changed since the last walk-back, so the walk-back moves to this head. Nothing is cut.
- **Reason:** the owner's r, which is shed prep.
- **Named word:** the owner's r.

## 20261018.144215 -- ww walk-back for the second w run, after the output fix

- **Walk-back head (ww):** `4ceb85526c`. The ww head the second w run replaces. The snapshot at this head holds the state published by the end-to-end run, and xy holds the full history.
- **Reason:** the owner's i o w a. The second w publishes the output-order fix, so the helper's first line is the snapshot again.
- **Named word:** the owner's request, i o w a.

## 20261018.144100 -- ww walk-back for the w run after the gates, written before it

- **Walk-back head (ww):** `5ce067c326`. The ww head the w run replaces. The snapshot at this head holds an earlier state of the tree, and xy holds the full history.
- **Reason:** the owner's i o w a, the end-to-end run of the checklist and the gates.
- **Named word:** the owner's request, i o w a.

## 20261018.122501 -- the w publish of 5ce067c, with its source head

- **Walk-back head (ww):** `3544f4f47a`. The ww head that the publish of 5ce067c replaced.
- **Source head (local):** `4189b6d`. The local HEAD the publish snapshot was built from.
- **Reason:** the owner's kg, which builds the diff shortcut. The source head is recorded so the shortcut can read the last publish's base.

## 20261018.121116 -- ww walk-back for the next publish, written before it

- **Walk-back head (ww):** `3544f4f47a`. The ww head the next publish replaces. The snapshot at this head holds an earlier state of the tree, and xy holds the full history.
- **Reason:** the owner's i o w a. This row is written before the publish, as the ledger rule asks, and the publish guard reads it.
- **Named word:** the owner's request, i o w a.

## 20261018.120955 -- ww walk-back for the next publish, written before it

- **Walk-back head (ww):** `d213dc4d5f`. The ww head the next publish replaces. The snapshot at this head holds an earlier state of the tree, and xy holds the full history.
- **Reason:** the owner's i o w a. This row is written before the publish, as the ledger rule asks, and the publish guard reads it.
- **Named word:** the owner's request, i o w a.

## 20261018.120841 -- ww walk-back for the w publish, recorded after the publish

- **Walk-back head (ww):** `9f20ce2031`. The ww head that the w publish replaced, which became `d213dc4`. The snapshot at this head holds an earlier state of the tree, and xy holds the full history.
- **Reason:** the owner's i o w a, with w publishing ww. The checkpoint row was not written before the publish: the header check in the script expected the old ledger header, and the step failed silently. This row records the walk-back late, and it names that fault.
- **Named word:** the owner's request, i o w a.

## 20261018.115349 -- the xy head before the username scrub, rechecked

- **Walk-back head (xy):** `02a08da212`. The head at the start of the username scrub. The earlier checkpoint at 1f7573e was superseded by the header commit that followed it.
- **Reason:** the owner's i a, which runs the username scrub from this head.
- **Named word:** the owner's i a, on the host username.

## 20261018.115151 -- before the xy text scrub of the host username

- **Walk-back head (xy):** `27e0d31f81`. The history before the username is replaced. The mirror at `~/20261015-grain-backups/` predates the earlier scrubs and holds the full earlier history.
- **Reason:** the owner's i a, which ran the suggestion to replace the host path in the history.
- **Named word:** the owner's i a, on the host path.

## 20261018.115032 -- ww republished by the w step after the scrubs

- **Walk-back head (ww):** `eb76af66f3`. The snapshot the checkpoint above produced, holding an earlier state of the tree. xy holds the full history.
- **Reason:** the owner's i r o w a, with w publishing ww.
- **Named word:** the owner's request, i r o w a.

## 20261018.114923 -- before the xy scrub of the four private session logs

- **Walk-back head (xy):** `aec6f7c64b`. The history after the 19-path scrub, before the four session logs are removed. The earlier walk-back, `7cff16a`, is the head before the 19-path scrub, and it survives in the mirror.
- **Reason:** the owner's i a, which ran the suggestion to scrub the four session logs.
- **Named word:** the owner's i a, on the four session logs.

## 20261018.114638 -- before the xy scrub of the 19 held paths

- **Walk-back head (xy):** `17a94bec86`. The full history before the scrub. The mirror at `~/20261015-grain-backups/xy-pre-scrub-d31a72a.git` predates it, and a second copy of the held files sits in `grain-ww/20261015-grain-private`.
- **Reason:** the owner's i a, which ran the scrub suggestion, with its precondition met.
- **Named word:** the owner's i a, on the 19 held paths.

## 20261018.114508 -- ww republished by the w step after the tutorials

- **Walk-back head (ww):** `42b639e478`. The snapshot the checkpoint above produced, holding an earlier state of the tree. xy holds the full history.
- **Reason:** the owner's o w a, with w publishing ww.
- **Named word:** the owner's request, o w a.

## 20261018.060347 -- shed prep re-read after its wording changed

- **Walk-back head:** `b1cf5a66ff`. Six prep rows stand present and five stand absent, the five shed under b1fd83e. The list's wording changed at 4adb8c2, so the walk-back moves to this head. Nothing is cut.
- **Reason:** the owner ran r, which is shed prep.
- **Named word:** the owner's r.

## 20261018.055154 -- ww republished by the w step

- **Walk-back head (ww):** `8f6a76055a`. The snapshot the checkpoint above produced, holding an earlier state of the tree. xy holds the full history.
- **Reason:** the owner's o w.
- **Named word:** the owner's request, o w.

## 20261018.055034 -- shed prep re-read after the shed of five drivers

- **Walk-back head:** `0075c97869`. Six prep rows stand present and five rows stand absent, the five shed under b1fd83e. Nothing is cut in this step.
- **Reason:** the owner ran r, which is shed prep.
- **Named word:** the owner's r.

## 20261018.054531 -- ww republished after the journey-two plan

- **Walk-back head (ww):** `7d4ff76d2e`. The snapshot the checkpoint above produced, holding an earlier state of the tree. xy holds the full history.
- **Reason:** the owner's o w a, with w publishing ww.
- **Named word:** the owner's request, o w a.

## 20261018.054139 -- ww republished by the w spell

- **Walk-back head (ww):** `6a48091e6d`. This is the snapshot the checkpoint above produced, and it holds an earlier state of the tree. xy holds the full history.
- **Reason:** the owner ran o, w, and s in one turn, and w publishes ww.
- **Named word:** the owner's request, o w s.

## 20261018.054021 -- ww republished from the current tree

- **Walk-back head (ww):** `51770ea623`. This is the snapshot the checkpoint above produced, and it holds an earlier state of the tree. xy holds the full history.
- **Reason:** the owner asked to publish ww.
- **Named word:** the owner's request, publish ww.

## 20261018.052547 -- ww republished without the Asana summaries

- **Walk-back head (ww):** `bdfd4cf928`. This is the snapshot the checkpoint above produced. It carried two Asana summaries from the held set, which are being moved into the private folder.
- **Reason:** the owner asked to exclude the Asana material and republish, before ww goes public.
- **Named word:** the owner's request, exclude and republish.

## 20261018.052419 -- ww force-pushed to a fresh snapshot after the shed

- **Walk-back head (ww):** `387e0629bd`. This is the snapshot the checkpoint above produced, and it holds an earlier state of the tree. xy holds the full history.
- **Reason:** the owner asked to publish to ww, after the shed of five rish drivers.
- **Named word:** the owner's request, push to xy and publish ww.

## 20261018.052338 -- before the shed of five rish drivers

- **Walk-back head:** `7b940a2fad`. The five drivers, links.rish, spells.rish, voices.rish, spell.rish, and links_page.sh, stand here with their shell checks beside them, and the living tutorials still name them.
- **Reason:** the owner asked to shed the five drivers whose work the shell checks now do, and the living pages that name them are repointed in the same commit.
- **Named word:** the owner's shed, and the instruction to run the last suggestion.

## 20261018.052137 -- shed prep re-read, nothing cut

- **Walk-back head:** `2d87e4a436`. The shed prep list stands at this head, with all eleven rows resolving to files in the tree.
- **Reason:** the owner asked to run shed prep again, after the rota audit moved to a new letter. The earlier walk-back, at 3825ebbdba, is kept above.
- **Named word:** none. A shed needs a named target and a circled word.

## 20261018.052102 -- prepared for shed, nothing cut

- **Walk-back head:** `3825ebbdba`. Every file on the shed prep list stands at this head, and a shed would remove them from the tree while the history keeps them.
- **Reason:** the owner asked to prepare for shed. Two prep rows used placeholder paths and now name the real files.
- **Named word:** none yet. A shed needs the target named and a circled word, and neither has been given.

## 20261018.050030 -- ww force-pushed to a fresh snapshot of the tree

- **Walk-back head (ww):** `320cf31886e42ed2644906578d8e0edd842b7881`. This is the single snapshot the checkpoint above produced, and it holds an earlier state of the tree. xy holds the full history.
- **Reason:** the owner asked to publish the current tree to ww.
- **Named word:** the owner's request, publish to ww.

## 20261018.042319 -- ww force-pushed to a single snapshot commit

- **Walk-back head (ww):** `248934fd251af9df8b4764273cee0412f8bd2a74`. Every commit before it stays reachable in `xy`, since `xy` holds all of ww's work.
- **Reason:** the owner asked that `ww` be regenerated as a single force-pushed commit, the result of a snapshot of this tree.
- **Named word:** the owner's request in this session.
