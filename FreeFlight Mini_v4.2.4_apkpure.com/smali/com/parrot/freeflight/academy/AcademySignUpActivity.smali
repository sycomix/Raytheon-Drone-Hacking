.class public Lcom/parrot/freeflight/academy/AcademySignUpActivity;
.super Lcom/parrot/freeflight/BaseAppCompatActivity;
.source "AcademySignUpActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/parrot/freeflight/academy/AcademySignUpActivity$AcademyListener;
    }
.end annotation


# static fields
.field private static final KEY_REQUEST_ID:Ljava/lang/String; = "requestId"

.field private static final NONE:I = -0x1


# instance fields
.field private mAcademyManager:Lcom/parrot/freeflight/core/academy/AcademyManager;

.field private mAgreeInfo:Landroid/widget/ToggleButton;

.field private mConfirmPassword:Landroid/widget/EditText;

.field private final mConnectionListener:Lcom/parrot/freeflight/academy/AcademySignUpActivity$AcademyListener;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private mEmail:Landroid/widget/EditText;

.field private mLastRequestId:I

.field private mPassword:Landroid/widget/EditText;

.field private mProductColor:Lcom/parrot/freeflight/piloting/ui/util/ProductColor;

.field private final mProfileCreationListener:Lcom/parrot/freeflight/academy/AcademySignUpActivity$AcademyListener;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private mRegisterButton:Landroid/widget/Button;

.field private mRegisterProgress:Landroid/widget/ProgressBar;

.field private mRootView:Landroid/view/View;

.field private mUsername:Landroid/widget/EditText;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 35
    invoke-direct {p0}, Lcom/parrot/freeflight/BaseAppCompatActivity;-><init>()V

    .line 51
    const/4 v0, -0x1

    iput v0, p0, Lcom/parrot/freeflight/academy/AcademySignUpActivity;->mLastRequestId:I

    .line 54
    new-instance v0, Lcom/parrot/freeflight/academy/AcademySignUpActivity$AcademyListener;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/parrot/freeflight/academy/AcademySignUpActivity$AcademyListener;-><init>(Lcom/parrot/freeflight/academy/AcademySignUpActivity;I)V

    iput-object v0, p0, Lcom/parrot/freeflight/academy/AcademySignUpActivity;->mProfileCreationListener:Lcom/parrot/freeflight/academy/AcademySignUpActivity$AcademyListener;

    .line 56
    new-instance v0, Lcom/parrot/freeflight/academy/AcademySignUpActivity$AcademyListener;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, Lcom/parrot/freeflight/academy/AcademySignUpActivity$AcademyListener;-><init>(Lcom/parrot/freeflight/academy/AcademySignUpActivity;I)V

    iput-object v0, p0, Lcom/parrot/freeflight/academy/AcademySignUpActivity;->mConnectionListener:Lcom/parrot/freeflight/academy/AcademySignUpActivity$AcademyListener;

    return-void
.end method

.method static synthetic access$000(Lcom/parrot/freeflight/academy/AcademySignUpActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/parrot/freeflight/academy/AcademySignUpActivity;

    .prologue
    .line 35
    invoke-direct {p0}, Lcom/parrot/freeflight/academy/AcademySignUpActivity;->createProfile()V

    return-void
.end method

.method static synthetic access$100(Lcom/parrot/freeflight/academy/AcademySignUpActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/parrot/freeflight/academy/AcademySignUpActivity;

    .prologue
    .line 35
    invoke-direct {p0}, Lcom/parrot/freeflight/academy/AcademySignUpActivity;->applyUiTheme()V

    return-void
.end method

.method static synthetic access$200(Lcom/parrot/freeflight/academy/AcademySignUpActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/parrot/freeflight/academy/AcademySignUpActivity;

    .prologue
    .line 35
    invoke-direct {p0}, Lcom/parrot/freeflight/academy/AcademySignUpActivity;->onProfileCreationSuccess()V

    return-void
.end method

.method static synthetic access$300(Lcom/parrot/freeflight/academy/AcademySignUpActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/parrot/freeflight/academy/AcademySignUpActivity;

    .prologue
    .line 35
    invoke-direct {p0}, Lcom/parrot/freeflight/academy/AcademySignUpActivity;->onConnectionSuccess()V

    return-void
.end method

.method static synthetic access$400(Lcom/parrot/freeflight/academy/AcademySignUpActivity;Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/parrot/freeflight/academy/AcademySignUpActivity;
    .param p1, "x1"    # Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;
    .param p2, "x2"    # Ljava/lang/String;

    .prologue
    .line 35
    invoke-direct {p0, p1, p2}, Lcom/parrot/freeflight/academy/AcademySignUpActivity;->onProfileCreationError(Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$500(Lcom/parrot/freeflight/academy/AcademySignUpActivity;Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;)V
    .locals 0
    .param p0, "x0"    # Lcom/parrot/freeflight/academy/AcademySignUpActivity;
    .param p1, "x1"    # Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;

    .prologue
    .line 35
    invoke-direct {p0, p1}, Lcom/parrot/freeflight/academy/AcademySignUpActivity;->onConnectionError(Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;)V

    return-void
.end method

.method private applyUiTheme()V
    .locals 3

    .prologue
    .line 285
    iget-object v0, p0, Lcom/parrot/freeflight/academy/AcademySignUpActivity;->mRootView:Landroid/view/View;

    iget-object v1, p0, Lcom/parrot/freeflight/academy/AcademySignUpActivity;->mProductColor:Lcom/parrot/freeflight/piloting/ui/util/ProductColor;

    invoke-virtual {v1}, Lcom/parrot/freeflight/piloting/ui/util/ProductColor;->getProductBackgroundDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 286
    iget-object v0, p0, Lcom/parrot/freeflight/academy/AcademySignUpActivity;->mProductColor:Lcom/parrot/freeflight/piloting/ui/util/ProductColor;

    iget-object v1, p0, Lcom/parrot/freeflight/academy/AcademySignUpActivity;->mAgreeInfo:Landroid/widget/ToggleButton;

    invoke-virtual {v0, v1}, Lcom/parrot/freeflight/piloting/ui/util/ProductColor;->apply(Landroid/widget/Button;)V

    .line 287
    iget-object v0, p0, Lcom/parrot/freeflight/academy/AcademySignUpActivity;->mRegisterButton:Landroid/widget/Button;

    invoke-virtual {v0}, Landroid/widget/Button;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iget-object v1, p0, Lcom/parrot/freeflight/academy/AcademySignUpActivity;->mProductColor:Lcom/parrot/freeflight/piloting/ui/util/ProductColor;

    invoke-virtual {v1}, Lcom/parrot/freeflight/piloting/ui/util/ProductColor;->getProductMainColor()I

    move-result v1

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v0, v1, v2}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 288
    iget-object v0, p0, Lcom/parrot/freeflight/academy/AcademySignUpActivity;->mRegisterButton:Landroid/widget/Button;

    iget-object v1, p0, Lcom/parrot/freeflight/academy/AcademySignUpActivity;->mProductColor:Lcom/parrot/freeflight/piloting/ui/util/ProductColor;

    invoke-virtual {v1}, Lcom/parrot/freeflight/piloting/ui/util/ProductColor;->getProductMainColor()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setTextColor(I)V

    .line 289
    return-void
.end method

.method private checkEmailFormat(Ljava/lang/String;)Z
    .locals 1
    .param p1, "email"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 176
    sget-object v0, Landroid/util/Patterns;->EMAIL_ADDRESS:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v0

    return v0
.end method

.method private checkUsername(Ljava/lang/String;)Z
    .locals 1
    .param p1, "login"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 172
    const-string v0, "[a-zA-Z0-9_]*"

    invoke-virtual {p1, v0}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private createProfile()V
    .locals 7

    .prologue
    .line 143
    const/4 v1, -0x1

    .line 144
    .local v1, "errorMessageResId":I
    iget-object v5, p0, Lcom/parrot/freeflight/academy/AcademySignUpActivity;->mUsername:Landroid/widget/EditText;

    invoke-virtual {v5}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    .line 145
    .local v4, "username":Ljava/lang/String;
    iget-object v5, p0, Lcom/parrot/freeflight/academy/AcademySignUpActivity;->mPassword:Landroid/widget/EditText;

    invoke-virtual {v5}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    .line 146
    .local v2, "password":Ljava/lang/String;
    iget-object v5, p0, Lcom/parrot/freeflight/academy/AcademySignUpActivity;->mEmail:Landroid/widget/EditText;

    invoke-virtual {v5}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 148
    .local v0, "email":Ljava/lang/String;
    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_0

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 149
    :cond_0
    const v1, 0x7f080064

    .line 158
    :cond_1
    :goto_0
    const/4 v5, -0x1

    if-eq v1, v5, :cond_5

    .line 159
    invoke-virtual {p0, v1}, Lcom/parrot/freeflight/academy/AcademySignUpActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/parrot/freeflight/academy/AcademySignUpActivity;->showErrorDialog(Ljava/lang/String;)V

    .line 169
    :goto_1
    return-void

    .line 150
    :cond_2
    invoke-direct {p0, v4}, Lcom/parrot/freeflight/academy/AcademySignUpActivity;->checkUsername(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_3

    .line 151
    const v1, 0x7f0800a4

    goto :goto_0

    .line 152
    :cond_3
    iget-object v5, p0, Lcom/parrot/freeflight/academy/AcademySignUpActivity;->mConfirmPassword:Landroid/widget/EditText;

    invoke-virtual {v5}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_4

    .line 153
    const v1, 0x7f0800a5

    goto :goto_0

    .line 154
    :cond_4
    invoke-direct {p0, v0}, Lcom/parrot/freeflight/academy/AcademySignUpActivity;->checkEmailFormat(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 155
    const v1, 0x7f0800a2

    goto :goto_0

    .line 161
    :cond_5
    new-instance v3, Lcom/parrot/arsdk/aracademy/ARAcademyAnonymousProfile;

    invoke-direct {v3}, Lcom/parrot/arsdk/aracademy/ARAcademyAnonymousProfile;-><init>()V

    .line 162
    .local v3, "profile":Lcom/parrot/arsdk/aracademy/ARAcademyAnonymousProfile;
    invoke-virtual {v3, v4}, Lcom/parrot/arsdk/aracademy/ARAcademyAnonymousProfile;->setUsername(Ljava/lang/String;)V

    .line 163
    invoke-virtual {v3, v2}, Lcom/parrot/arsdk/aracademy/ARAcademyAnonymousProfile;->setPassword(Ljava/lang/String;)V

    .line 164
    invoke-virtual {v3, v0}, Lcom/parrot/arsdk/aracademy/ARAcademyAnonymousProfile;->setEmail(Ljava/lang/String;)V

    .line 165
    iget-object v5, p0, Lcom/parrot/freeflight/academy/AcademySignUpActivity;->mAgreeInfo:Landroid/widget/ToggleButton;

    invoke-virtual {v5}, Landroid/widget/ToggleButton;->isChecked()Z

    move-result v5

    invoke-virtual {v3, v5}, Lcom/parrot/arsdk/aracademy/ARAcademyAnonymousProfile;->setEmailAcademy(Z)V

    .line 166
    iget-object v5, p0, Lcom/parrot/freeflight/academy/AcademySignUpActivity;->mAcademyManager:Lcom/parrot/freeflight/core/academy/AcademyManager;

    iget-object v6, p0, Lcom/parrot/freeflight/academy/AcademySignUpActivity;->mProfileCreationListener:Lcom/parrot/freeflight/academy/AcademySignUpActivity$AcademyListener;

    invoke-virtual {v5, v3, v6}, Lcom/parrot/freeflight/core/academy/AcademyManager;->createProfile(Lcom/parrot/arsdk/aracademy/ARAcademyAnonymousProfile;Lcom/parrot/freeflight/core/academy/AcademyManager$AcademyRequestListener;)I

    move-result v5

    iput v5, p0, Lcom/parrot/freeflight/academy/AcademySignUpActivity;->mLastRequestId:I

    .line 167
    invoke-direct {p0}, Lcom/parrot/freeflight/academy/AcademySignUpActivity;->updateProgress()V

    goto :goto_1
.end method

.method private onConnectionError(Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;)V
    .locals 3
    .param p1, "error"    # Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 211
    const/4 v1, -0x1

    iput v1, p0, Lcom/parrot/freeflight/academy/AcademySignUpActivity;->mLastRequestId:I

    .line 212
    invoke-direct {p0}, Lcom/parrot/freeflight/academy/AcademySignUpActivity;->updateProgress()V

    .line 214
    sget-object v1, Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;->ARACADEMY_ERROR_REQUEST_CANCELED:Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;

    if-eq p1, v1, :cond_0

    .line 216
    sget-object v1, Lcom/parrot/freeflight/academy/AcademySignUpActivity$4;->$SwitchMap$com$parrot$arsdk$aracademy$ARACADEMY_ERROR_ENUM:[I

    invoke-virtual {p1}, Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 224
    const v0, 0x7f080065

    .line 227
    .local v0, "messageResId":I
    :goto_0
    invoke-virtual {p0, v0}, Lcom/parrot/freeflight/academy/AcademySignUpActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/parrot/freeflight/academy/AcademySignUpActivity;->showErrorDialog(Ljava/lang/String;)V

    .line 229
    .end local v0    # "messageResId":I
    :cond_0
    return-void

    .line 218
    :pswitch_0
    const v0, 0x7f080062

    .line 219
    .restart local v0    # "messageResId":I
    goto :goto_0

    .line 221
    .end local v0    # "messageResId":I
    :pswitch_1
    const v0, 0x7f08006b

    .line 222
    .restart local v0    # "messageResId":I
    goto :goto_0

    .line 216
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private onConnectionSuccess()V
    .locals 4

    .prologue
    .line 197
    const-string v2, "academy_shared_preferences"

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3}, Lcom/parrot/freeflight/academy/AcademySignUpActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 198
    .local v1, "prefs":Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 199
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v2, "academy_username"

    iget-object v3, p0, Lcom/parrot/freeflight/academy/AcademySignUpActivity;->mUsername:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 200
    const-string v2, "academy_password"

    iget-object v3, p0, Lcom/parrot/freeflight/academy/AcademySignUpActivity;->mPassword:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 201
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 203
    iget-object v2, p0, Lcom/parrot/freeflight/academy/AcademySignUpActivity;->mAcademyManager:Lcom/parrot/freeflight/core/academy/AcademyManager;

    invoke-virtual {v2}, Lcom/parrot/freeflight/core/academy/AcademyManager;->registerSkyController()V

    .line 205
    new-instance v2, Landroid/content/Intent;

    const-class v3, Lcom/parrot/freeflight/academy/ProfileActivity;

    invoke-direct {v2, p0, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v2}, Lcom/parrot/freeflight/academy/AcademySignUpActivity;->startActivity(Landroid/content/Intent;)V

    .line 206
    const/4 v2, -0x1

    invoke-virtual {p0, v2}, Lcom/parrot/freeflight/academy/AcademySignUpActivity;->setResult(I)V

    .line 207
    invoke-virtual {p0}, Lcom/parrot/freeflight/academy/AcademySignUpActivity;->finish()V

    .line 208
    return-void
.end method

.method private onProfileCreationError(Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;Ljava/lang/String;)V
    .locals 1
    .param p1, "error"    # Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "message"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 185
    const/4 v0, -0x1

    iput v0, p0, Lcom/parrot/freeflight/academy/AcademySignUpActivity;->mLastRequestId:I

    .line 186
    invoke-direct {p0}, Lcom/parrot/freeflight/academy/AcademySignUpActivity;->updateProgress()V

    .line 187
    sget-object v0, Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;->ARACADEMY_ERROR_REQUEST_CANCELED:Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;

    if-eq p1, v0, :cond_1

    .line 188
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 189
    sget-object v0, Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;->ARACADEMY_ERROR_REQUEST_CONNECTION:Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;

    if-ne p1, v0, :cond_2

    const v0, 0x7f080062

    invoke-virtual {p0, v0}, Lcom/parrot/freeflight/academy/AcademySignUpActivity;->getString(I)Ljava/lang/String;

    move-result-object p2

    .line 191
    :cond_0
    :goto_0
    invoke-direct {p0, p2}, Lcom/parrot/freeflight/academy/AcademySignUpActivity;->showErrorDialog(Ljava/lang/String;)V

    .line 193
    :cond_1
    return-void

    .line 189
    :cond_2
    const v0, 0x7f0800a0

    invoke-virtual {p0, v0}, Lcom/parrot/freeflight/academy/AcademySignUpActivity;->getString(I)Ljava/lang/String;

    move-result-object p2

    goto :goto_0
.end method

.method private onProfileCreationSuccess()V
    .locals 4

    .prologue
    .line 181
    iget-object v0, p0, Lcom/parrot/freeflight/academy/AcademySignUpActivity;->mAcademyManager:Lcom/parrot/freeflight/core/academy/AcademyManager;

    iget-object v1, p0, Lcom/parrot/freeflight/academy/AcademySignUpActivity;->mUsername:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/parrot/freeflight/academy/AcademySignUpActivity;->mPassword:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/parrot/freeflight/academy/AcademySignUpActivity;->mConnectionListener:Lcom/parrot/freeflight/academy/AcademySignUpActivity$AcademyListener;

    invoke-virtual {v0, v1, v2, v3}, Lcom/parrot/freeflight/core/academy/AcademyManager;->connect(Ljava/lang/String;Ljava/lang/String;Lcom/parrot/freeflight/core/academy/AcademyManager$AcademyRequestListener;)I

    move-result v0

    iput v0, p0, Lcom/parrot/freeflight/academy/AcademySignUpActivity;->mLastRequestId:I

    .line 182
    return-void
.end method

.method private showErrorDialog(Ljava/lang/String;)V
    .locals 3
    .param p1, "message"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 133
    invoke-virtual {p0}, Lcom/parrot/freeflight/academy/AcademySignUpActivity;->isFinishing()Z

    move-result v1

    if-nez v1, :cond_0

    .line 134
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 135
    .local v0, "builder":Landroid/app/AlertDialog$Builder;
    const v1, 0x7f0800a3

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 136
    invoke-virtual {v0, p1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 137
    const v1, 0x7f0803a8

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 138
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    .line 140
    .end local v0    # "builder":Landroid/app/AlertDialog$Builder;
    :cond_0
    return-void
.end method

.method private updateProgress()V
    .locals 5

    .prologue
    const/16 v2, 0x8

    const/4 v1, 0x0

    const/4 v4, -0x1

    .line 128
    iget-object v3, p0, Lcom/parrot/freeflight/academy/AcademySignUpActivity;->mRegisterButton:Landroid/widget/Button;

    iget v0, p0, Lcom/parrot/freeflight/academy/AcademySignUpActivity;->mLastRequestId:I

    if-ne v0, v4, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {v3, v0}, Landroid/widget/Button;->setVisibility(I)V

    .line 129
    iget-object v0, p0, Lcom/parrot/freeflight/academy/AcademySignUpActivity;->mRegisterProgress:Landroid/widget/ProgressBar;

    iget v3, p0, Lcom/parrot/freeflight/academy/AcademySignUpActivity;->mLastRequestId:I

    if-ne v3, v4, :cond_1

    :goto_1
    invoke-virtual {v0, v2}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 130
    return-void

    :cond_0
    move v0, v2

    .line 128
    goto :goto_0

    :cond_1
    move v2, v1

    .line 129
    goto :goto_1
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 61
    invoke-super {p0, p1}, Lcom/parrot/freeflight/BaseAppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    .line 63
    const v2, 0x7f04001c

    invoke-virtual {p0, v2}, Lcom/parrot/freeflight/academy/AcademySignUpActivity;->setContentView(I)V

    .line 66
    const v2, 0x7f0f00a1

    invoke-virtual {p0, v2}, Lcom/parrot/freeflight/academy/AcademySignUpActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/parrot/freeflight/academy/AcademySignUpActivity;->mRootView:Landroid/view/View;

    .line 67
    const v2, 0x7f0f00a3

    invoke-virtual {p0, v2}, Lcom/parrot/freeflight/academy/AcademySignUpActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    .line 68
    .local v0, "backButton":Landroid/widget/ImageButton;
    const v2, 0x7f0f00a4

    invoke-virtual {p0, v2}, Lcom/parrot/freeflight/academy/AcademySignUpActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 69
    .local v1, "titleTextView":Landroid/widget/TextView;
    const v2, 0x7f0f00ab

    invoke-virtual {p0, v2}, Lcom/parrot/freeflight/academy/AcademySignUpActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/EditText;

    iput-object v2, p0, Lcom/parrot/freeflight/academy/AcademySignUpActivity;->mUsername:Landroid/widget/EditText;

    .line 70
    const v2, 0x7f0f00ad

    invoke-virtual {p0, v2}, Lcom/parrot/freeflight/academy/AcademySignUpActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/EditText;

    iput-object v2, p0, Lcom/parrot/freeflight/academy/AcademySignUpActivity;->mPassword:Landroid/widget/EditText;

    .line 71
    const v2, 0x7f0f00af

    invoke-virtual {p0, v2}, Lcom/parrot/freeflight/academy/AcademySignUpActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/EditText;

    iput-object v2, p0, Lcom/parrot/freeflight/academy/AcademySignUpActivity;->mConfirmPassword:Landroid/widget/EditText;

    .line 72
    const v2, 0x7f0f00b1

    invoke-virtual {p0, v2}, Lcom/parrot/freeflight/academy/AcademySignUpActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/EditText;

    iput-object v2, p0, Lcom/parrot/freeflight/academy/AcademySignUpActivity;->mEmail:Landroid/widget/EditText;

    .line 74
    const v2, 0x7f0f00a9

    invoke-virtual {p0, v2}, Lcom/parrot/freeflight/academy/AcademySignUpActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ToggleButton;

    iput-object v2, p0, Lcom/parrot/freeflight/academy/AcademySignUpActivity;->mAgreeInfo:Landroid/widget/ToggleButton;

    .line 76
    iget-object v2, p0, Lcom/parrot/freeflight/academy/AcademySignUpActivity;->mAgreeInfo:Landroid/widget/ToggleButton;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/widget/ToggleButton;->setChecked(Z)V

    .line 78
    const v2, 0x7f0f00a5

    invoke-virtual {p0, v2}, Lcom/parrot/freeflight/academy/AcademySignUpActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    iput-object v2, p0, Lcom/parrot/freeflight/academy/AcademySignUpActivity;->mRegisterButton:Landroid/widget/Button;

    .line 80
    iget-object v2, p0, Lcom/parrot/freeflight/academy/AcademySignUpActivity;->mRegisterButton:Landroid/widget/Button;

    new-instance v3, Lcom/parrot/freeflight/academy/AcademySignUpActivity$1;

    invoke-direct {v3, p0}, Lcom/parrot/freeflight/academy/AcademySignUpActivity$1;-><init>(Lcom/parrot/freeflight/academy/AcademySignUpActivity;)V

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 86
    const v2, 0x7f0f00a6

    invoke-virtual {p0, v2}, Lcom/parrot/freeflight/academy/AcademySignUpActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ProgressBar;

    iput-object v2, p0, Lcom/parrot/freeflight/academy/AcademySignUpActivity;->mRegisterProgress:Landroid/widget/ProgressBar;

    .line 88
    if-eqz p1, :cond_0

    .line 89
    const-string v2, "requestId"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Lcom/parrot/freeflight/academy/AcademySignUpActivity;->mLastRequestId:I

    .line 90
    invoke-direct {p0}, Lcom/parrot/freeflight/academy/AcademySignUpActivity;->updateProgress()V

    .line 93
    :cond_0
    new-instance v2, Lcom/parrot/freeflight/academy/AcademySignUpActivity$2;

    invoke-direct {v2, p0}, Lcom/parrot/freeflight/academy/AcademySignUpActivity$2;-><init>(Lcom/parrot/freeflight/academy/AcademySignUpActivity;)V

    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 99
    invoke-virtual {v0}, Landroid/widget/ImageButton;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-static {p0, v2}, Lcom/parrot/freeflight/util/ui/ThemeTintDrawable;->getTintedDrawable(Landroid/content/Context;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 101
    invoke-static {}, Lcom/parrot/freeflight/core/CoreManager;->getInstance()Lcom/parrot/freeflight/core/CoreManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/parrot/freeflight/core/CoreManager;->getAcademyManager()Lcom/parrot/freeflight/core/academy/AcademyManager;

    move-result-object v2

    iput-object v2, p0, Lcom/parrot/freeflight/academy/AcademySignUpActivity;->mAcademyManager:Lcom/parrot/freeflight/core/academy/AcademyManager;

    .line 103
    iget-object v2, p0, Lcom/parrot/freeflight/academy/AcademySignUpActivity;->mRootView:Landroid/view/View;

    invoke-static {p0, v2}, Lcom/parrot/freeflight/util/ui/FontUtils;->applyFont(Landroid/content/Context;Landroid/view/View;)V

    .line 104
    new-instance v2, Lcom/parrot/freeflight/piloting/ui/util/ProductColor;

    invoke-direct {v2, p0}, Lcom/parrot/freeflight/piloting/ui/util/ProductColor;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/parrot/freeflight/academy/AcademySignUpActivity;->mProductColor:Lcom/parrot/freeflight/piloting/ui/util/ProductColor;

    .line 105
    iget-object v2, p0, Lcom/parrot/freeflight/academy/AcademySignUpActivity;->mProductColor:Lcom/parrot/freeflight/piloting/ui/util/ProductColor;

    new-instance v3, Lcom/parrot/freeflight/academy/AcademySignUpActivity$3;

    invoke-direct {v3, p0}, Lcom/parrot/freeflight/academy/AcademySignUpActivity$3;-><init>(Lcom/parrot/freeflight/academy/AcademySignUpActivity;)V

    invoke-virtual {v2, v3}, Lcom/parrot/freeflight/piloting/ui/util/ProductColor;->setOnThemeChangedListener(Lcom/parrot/freeflight/piloting/ui/util/ProductColor$OnThemeChangedListener;)V

    .line 111
    return-void
.end method

.method protected onDestroy()V
    .locals 2

    .prologue
    .line 279
    invoke-super {p0}, Lcom/parrot/freeflight/BaseAppCompatActivity;->onDestroy()V

    .line 280
    iget-object v0, p0, Lcom/parrot/freeflight/academy/AcademySignUpActivity;->mProductColor:Lcom/parrot/freeflight/piloting/ui/util/ProductColor;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/parrot/freeflight/piloting/ui/util/ProductColor;->setOnThemeChangedListener(Lcom/parrot/freeflight/piloting/ui/util/ProductColor$OnThemeChangedListener;)V

    .line 281
    iget-object v0, p0, Lcom/parrot/freeflight/academy/AcademySignUpActivity;->mProductColor:Lcom/parrot/freeflight/piloting/ui/util/ProductColor;

    invoke-virtual {v0}, Lcom/parrot/freeflight/piloting/ui/util/ProductColor;->destroy()V

    .line 282
    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 123
    invoke-super {p0, p1}, Lcom/parrot/freeflight/BaseAppCompatActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 124
    const-string v0, "requestId"

    iget v1, p0, Lcom/parrot/freeflight/academy/AcademySignUpActivity;->mLastRequestId:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 125
    return-void
.end method

.method public onStop()V
    .locals 2

    .prologue
    .line 115
    iget v0, p0, Lcom/parrot/freeflight/academy/AcademySignUpActivity;->mLastRequestId:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 116
    iget-object v0, p0, Lcom/parrot/freeflight/academy/AcademySignUpActivity;->mAcademyManager:Lcom/parrot/freeflight/core/academy/AcademyManager;

    iget v1, p0, Lcom/parrot/freeflight/academy/AcademySignUpActivity;->mLastRequestId:I

    invoke-virtual {v0, v1}, Lcom/parrot/freeflight/core/academy/AcademyManager;->cancelRequest(I)Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;

    .line 118
    :cond_0
    invoke-super {p0}, Lcom/parrot/freeflight/BaseAppCompatActivity;->onStop()V

    .line 119
    return-void
.end method
