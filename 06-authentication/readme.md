# 📁 login_api/

Responsibility:
Handles logging in the user.

Typical contents:

API call to /login

Send email/username + password

Receive accessToken + refreshToken

Example responsibilities:

login_repository.dart

login_remote_data_source.dart

login_model.dart

💡 Rule:

This folder does NOT care where tokens are stored, only that it gets them.

# 📁 token_storage/

Responsibility:
Handles saving, reading, and deleting tokens locally.

Usually implemented using:

SharedPreferences

SecureStorage

Keychain / Keystore (mobile)

Example:

TokenStorage.saveAccessToken()

TokenStorage.getRefreshToken()

TokenStorage.clearTokens()

💡 Rule:

No API calls here. This is pure local storage.

# 📁 refresh_token/

Responsibility:

Handles renewing the access token when it expires.

What happens here:

Send refreshToken to /refresh

Receive a new accessToken

Update stored token

Typical usage:

Called automatically by an interceptor

Prevents forcing the user to log in again

💡 Rule:

This folder depends on token_storage but NOT on UI.

# 📁 logout/

Responsibility:

Handles logging out the user.

Usually does:

Call /logout (optional, backend-dependent)

Clear all stored tokens

Reset auth state

Example:

LogoutUseCase

LogoutRepository

💡 Rule:

Logout is not just UI — it’s state + storage cleanup.
