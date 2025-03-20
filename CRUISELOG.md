# mark'dapp Cruise Log

**2025-02-05-17-02**

New branch: wagmi-2, authentication successful, saves cookie, button works well.

Needs cleaning.

User must be redirected to `/user/profile` which is not happening now. 

'UserBox' component needs UI strategy.

**2025-02-03-16-53**

Fixed all button states, now it works well with manually contrstructed authentication. 

Next move could be upgrade all to wagmi and viem packages.

**2025-01-28-19-14**

`/app/models/users.server.ts/createUser: userType is always "Collector"`

Continue from Auth.tsx button condition

**2025-01-24-14-28**

Auth is saved and staged as all-good tag for now. Signed message won't be hashed, but instead, the website address will be taken from env. vars, and verified by the server component which initializes user session.

Needs cleanup.

**2025-01-22-15-19**

Tried to add encryption option to signing message to make it more secure but there was so many unrelated issue pops up like `process.env.SIGN_MESSAGE` was so difficult to reach.

All changes are with `Auth.tsx` and `api.auth.ts`.

**2024-12-20-19-17**

Tried to find a way to encrypt the message that wallet request, then verify at back-end without decrtpt it, work interrupted before decision done. Last changes are in `Auth.tsx`

**2024-12-13-14-54**

After handling web3 in remix in another location got back to the proejct to implement the changes in here.

All went well, not smooth though. Leaving the project as it is with an error code that will match each other to make a relation:
```
E0001:
GET http://localhost:5173/user/ 404 (Not Found)
authenticate	@	Auth.tsx:26
(anonymous)	@	Auth.tsx:44
```

**2024-11-28-09-56**

MAybe it's better in order to stay quicker, to follow basics of backend app from moralis, than get back to front-end


**2024-11-26-10-01**

app still uses remote database for consistency. Cruise Log wasn't hold as expected. The last file left open was `app/models/user.server.ts`. The file was under construction of user authentication architecture.

`login.tsx` is the metamask interaction page.

it's better to check `~/Sandbox/wagmi-connect` folder and instructions there.

**2024-11-11-17-10**

mongodb docker container is running on veteran-avocet multipass instance at local.

Database migrated from pep-wind's ClusterA to local mongoDB container.

`~/d.edit.artwork.$slug.tsx` file is under construction of edit artwork form, it must be finished first. Then artworks can be fixed and evolve the schema edition artworks.

---

**2024-11-08**

Started Cruise Log. Some of the jobs in here been done earlier weeks.

Saved `app/tests/artworks.test.ts` that interacts with the DB in command line to make quick primitive tests.

Saved Artwork listing grid in home page.

Saved Artwork page skeleton is ready.

Made a logger function that displays REST results.

Created TODO.md file.
