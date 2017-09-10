.class public Lcom/parrot/freeflight/academy/AcademyLogInActivity;
.super Lcom/parrot/freeflight/BaseAppCompatActivity;
.source "AcademyLogInActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/parrot/freeflight/academy/AcademyLogInActivity$AcademyListener;,
        Lcom/parrot/freeflight/academy/AcademyLogInActivity$PermissionDialogFragment;
    }
.end annotation


# static fields
.field private static final CANNOT_RESET_PASSWORD_ERROR_CODE:Ljava/lang/String; = "21002"

.field private static final EMAIL_NOT_ASSOCIATED_ERROR_CODE:Ljava/lang/String; = "21001"

.field private static final ERROR_FRAGMENT_TAG:Ljava/lang/String; = "ERROR_FRAGMENT_TAG"

.field public static final REMEMBER_ME_SHARED_PREF_KEY:Ljava/lang/String; = "academy_remember_me"

.field private static final REQUEST_CODE_PERMISSION:I = 0x2

.field private static final REQUEST_CODE_SIGN_UP:I = 0x1

.field private static final SAVED_REQUEST_ID:Ljava/lang/String; = "saved_request_id"

.field private static final SAVED_RETRIEVE_PASSWORD_EMAIL:Ljava/lang/String; = "saved_retrieve_password_email"

.field private static final SOMETHING_IS_ALREADY_REGISTERED:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final SOMETHING_IS_INVALID_ERROR_CODE:Ljava/lang/String; = "10002"

.field private static final SOMETHING_IS_REQUIRED_ERROR_CODE:Ljava/lang/String; = "10001"

.field private static final SOMETHING_IS_TOO_LONG_ERROR_CODE:Ljava/lang/String; = "10010"


# instance fields
.field private mAcademyManager:Lcom/parrot/freeflight/core/academy/AcademyManager;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private mBottomButtons:Landroid/view/View;

.field private mLoginButton:Landroid/widget/Button;

.field private mLoginEditText:Landroid/widget/EditText;

.field private final mLoginListener:Lcom/parrot/freeflight/core/academy/AcademyManager$AcademyRequestListener;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private mLoginRememberMeNoRadioButton:Landroid/widget/RadioButton;

.field private mLoginRememberMeYesRadioButton:Landroid/widget/RadioButton;

.field private mPasswordEditText:Landroid/widget/EditText;

.field private mProductColor:Lcom/parrot/freeflight/piloting/ui/util/ProductColor;

.field private mRequestId:I

.field private final mResetPasswordListener:Lcom/parrot/freeflight/core/academy/AcademyManager$AcademyRequestListener;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private mRetrievePasswordEmailEditText:Landroid/widget/EditText;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private mRootLayout:Landroid/view/View;

.field private mWaitingProgress:Landroid/widget/ProgressBar;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 61
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "20001"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "20002"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "22002"

    aput-object v2, v0, v1

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/parrot/freeflight/academy/AcademyLogInActivity;->SOMETHING_IS_ALREADY_REGISTERED:Ljava/util/List;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 50
    invoke-direct {p0}, Lcom/parrot/freeflight/BaseAppCompatActivity;-><init>()V

    .line 79
    const/4 v0, -0x1

    iput v0, p0, Lcom/parrot/freeflight/academy/AcademyLogInActivity;->mRequestId:I

    .line 86
    new-instance v0, Lcom/parrot/freeflight/academy/AcademyLogInActivity$AcademyListener;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/parrot/freeflight/academy/AcademyLogInActivity$AcademyListener;-><init>(Lcom/parrot/freeflight/academy/AcademyLogInActivity;I)V

    iput-object v0, p0, Lcom/parrot/freeflight/academy/AcademyLogInActivity;->mLoginListener:Lcom/parrot/freeflight/core/academy/AcademyManager$AcademyRequestListener;

    .line 88
    new-instance v0, Lcom/parrot/freeflight/academy/AcademyLogInActivity$AcademyListener;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, Lcom/parrot/freeflight/academy/AcademyLogInActivity$AcademyListener;-><init>(Lcom/parrot/freeflight/academy/AcademyLogInActivity;I)V

    iput-object v0, p0, Lcom/parrot/freeflight/academy/AcademyLogInActivity;->mResetPasswordListener:Lcom/parrot/freeflight/core/academy/AcademyManager$AcademyRequestListener;

    return-void
.end method

.method static synthetic access$000(Lcom/parrot/freeflight/academy/AcademyLogInActivity;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/parrot/freeflight/academy/AcademyLogInActivity;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 50
    invoke-direct {p0, p1}, Lcom/parrot/freeflight/academy/AcademyLogInActivity;->passwordForgotten(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$100(Lcom/parrot/freeflight/academy/AcademyLogInActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/parrot/freeflight/academy/AcademyLogInActivity;

    .prologue
    .line 50
    invoke-direct {p0}, Lcom/parrot/freeflight/academy/AcademyLogInActivity;->checkPermissionBeforeLogin()V

    return-void
.end method

.method static synthetic access$200(Lcom/parrot/freeflight/academy/AcademyLogInActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/parrot/freeflight/academy/AcademyLogInActivity;

    .prologue
    .line 50
    invoke-direct {p0}, Lcom/parrot/freeflight/academy/AcademyLogInActivity;->applyUiTheme()V

    return-void
.end method

.method static synthetic access$300(Lcom/parrot/freeflight/academy/AcademyLogInActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/parrot/freeflight/academy/AcademyLogInActivity;

    .prologue
    .line 50
    invoke-direct {p0}, Lcom/parrot/freeflight/academy/AcademyLogInActivity;->onPermissionDenied()V

    return-void
.end method

.method static synthetic access$400(Lcom/parrot/freeflight/academy/AcademyLogInActivity;Landroid/app/Dialog;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/parrot/freeflight/academy/AcademyLogInActivity;
    .param p1, "x1"    # Landroid/app/Dialog;
    .param p2, "x2"    # Ljava/lang/String;

    .prologue
    .line 50
    invoke-direct {p0, p1, p2}, Lcom/parrot/freeflight/academy/AcademyLogInActivity;->checkAndSendResetPasswordEmail(Landroid/app/Dialog;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$500(Lcom/parrot/freeflight/academy/AcademyLogInActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/parrot/freeflight/academy/AcademyLogInActivity;

    .prologue
    .line 50
    invoke-direct {p0}, Lcom/parrot/freeflight/academy/AcademyLogInActivity;->loginSucceed()V

    return-void
.end method

.method static synthetic access$600(Lcom/parrot/freeflight/academy/AcademyLogInActivity;Lcom/parrot/arsdk/aracademy/ARAcademyResetPassword;)V
    .locals 0
    .param p0, "x0"    # Lcom/parrot/freeflight/academy/AcademyLogInActivity;
    .param p1, "x1"    # Lcom/parrot/arsdk/aracademy/ARAcademyResetPassword;

    .prologue
    .line 50
    invoke-direct {p0, p1}, Lcom/parrot/freeflight/academy/AcademyLogInActivity;->passwordResetSucceed(Lcom/parrot/arsdk/aracademy/ARAcademyResetPassword;)V

    return-void
.end method

.method static synthetic access$700(Lcom/parrot/freeflight/academy/AcademyLogInActivity;Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;)V
    .locals 0
    .param p0, "x0"    # Lcom/parrot/freeflight/academy/AcademyLogInActivity;
    .param p1, "x1"    # Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;

    .prologue
    .line 50
    invoke-direct {p0, p1}, Lcom/parrot/freeflight/academy/AcademyLogInActivity;->loginFailed(Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;)V

    return-void
.end method

.method static synthetic access$800(Lcom/parrot/freeflight/academy/AcademyLogInActivity;Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;Lcom/parrot/arsdk/aracademy/ARAcademyResetPassword;)V
    .locals 0
    .param p0, "x0"    # Lcom/parrot/freeflight/academy/AcademyLogInActivity;
    .param p1, "x1"    # Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;
    .param p2, "x2"    # Lcom/parrot/arsdk/aracademy/ARAcademyResetPassword;

    .prologue
    .line 50
    invoke-direct {p0, p1, p2}, Lcom/parrot/freeflight/academy/AcademyLogInActivity;->passwordResetFailed(Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;Lcom/parrot/arsdk/aracademy/ARAcademyResetPassword;)V

    return-void
.end method

.method private addToStringBuilder(Ljava/lang/StringBuilder;II)V
    .locals 4
    .param p1, "stringBuilder"    # Ljava/lang/StringBuilder;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "stringId"    # I
        .annotation build Landroid/support/annotation/StringRes;
        .end annotation
    .end param
    .param p3, "errorId"    # I
        .annotation build Landroid/support/annotation/StringRes;
        .end annotation
    .end param

    .prologue
    .line 450
    if-lez p3, :cond_0

    .line 451
    if-lez p2, :cond_1

    .line 452
    invoke-virtual {p0, p3}, Lcom/parrot/freeflight/academy/AcademyLogInActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-virtual {p0, p2}, Lcom/parrot/freeflight/academy/AcademyLogInActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 456
    :goto_0
    const-string v0, "\n"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 458
    :cond_0
    return-void

    .line 454
    :cond_1
    invoke-virtual {p0, p3}, Lcom/parrot/freeflight/academy/AcademyLogInActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0
.end method

.method private applyUiTheme()V
    .locals 3

    .prologue
    .line 539
    iget-object v1, p0, Lcom/parrot/freeflight/academy/AcademyLogInActivity;->mProductColor:Lcom/parrot/freeflight/piloting/ui/util/ProductColor;

    invoke-virtual {v1}, Lcom/parrot/freeflight/piloting/ui/util/ProductColor;->getProductMainColor()I

    move-result v0

    .line 540
    .local v0, "productMainColor":I
    iget-object v1, p0, Lcom/parrot/freeflight/academy/AcademyLogInActivity;->mWaitingProgress:Landroid/widget/ProgressBar;

    invoke-virtual {v1}, Landroid/widget/ProgressBar;->getIndeterminateDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v1, v0, v2}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 541
    iget-object v1, p0, Lcom/parrot/freeflight/academy/AcademyLogInActivity;->mRootLayout:Landroid/view/View;

    iget-object v2, p0, Lcom/parrot/freeflight/academy/AcademyLogInActivity;->mProductColor:Lcom/parrot/freeflight/piloting/ui/util/ProductColor;

    invoke-virtual {v2}, Lcom/parrot/freeflight/piloting/ui/util/ProductColor;->getProductBackgroundDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 542
    iget-object v1, p0, Lcom/parrot/freeflight/academy/AcademyLogInActivity;->mLoginButton:Landroid/widget/Button;

    invoke-virtual {v1}, Landroid/widget/Button;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v1, v0, v2}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 543
    iget-object v1, p0, Lcom/parrot/freeflight/academy/AcademyLogInActivity;->mLoginButton:Landroid/widget/Button;

    invoke-virtual {v1, v0}, Landroid/widget/Button;->setTextColor(I)V

    .line 544
    iget-object v1, p0, Lcom/parrot/freeflight/academy/AcademyLogInActivity;->mProductColor:Lcom/parrot/freeflight/piloting/ui/util/ProductColor;

    iget-object v2, p0, Lcom/parrot/freeflight/academy/AcademyLogInActivity;->mLoginEditText:Landroid/widget/EditText;

    invoke-virtual {v1, v2}, Lcom/parrot/freeflight/piloting/ui/util/ProductColor;->apply(Landroid/widget/EditText;)V

    .line 545
    iget-object v1, p0, Lcom/parrot/freeflight/academy/AcademyLogInActivity;->mProductColor:Lcom/parrot/freeflight/piloting/ui/util/ProductColor;

    iget-object v2, p0, Lcom/parrot/freeflight/academy/AcademyLogInActivity;->mPasswordEditText:Landroid/widget/EditText;

    invoke-virtual {v1, v2}, Lcom/parrot/freeflight/piloting/ui/util/ProductColor;->apply(Landroid/widget/EditText;)V

    .line 546
    iget-object v1, p0, Lcom/parrot/freeflight/academy/AcademyLogInActivity;->mProductColor:Lcom/parrot/freeflight/piloting/ui/util/ProductColor;

    iget-object v2, p0, Lcom/parrot/freeflight/academy/AcademyLogInActivity;->mLoginRememberMeNoRadioButton:Landroid/widget/RadioButton;

    invoke-virtual {v1, v2}, Lcom/parrot/freeflight/piloting/ui/util/ProductColor;->apply(Landroid/widget/RadioButton;)V

    .line 547
    iget-object v1, p0, Lcom/parrot/freeflight/academy/AcademyLogInActivity;->mProductColor:Lcom/parrot/freeflight/piloting/ui/util/ProductColor;

    iget-object v2, p0, Lcom/parrot/freeflight/academy/AcademyLogInActivity;->mLoginRememberMeYesRadioButton:Landroid/widget/RadioButton;

    invoke-virtual {v1, v2}, Lcom/parrot/freeflight/piloting/ui/util/ProductColor;->apply(Landroid/widget/RadioButton;)V

    .line 548
    return-void
.end method

.method private checkAndSendResetPasswordEmail(Landroid/app/Dialog;Ljava/lang/String;)V
    .locals 2
    .param p1, "dialog"    # Landroid/app/Dialog;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "email"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 365
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Landroid/util/Patterns;->EMAIL_ADDRESS:Ljava/util/regex/Pattern;

    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v0

    if-nez v0, :cond_1

    .line 366
    :cond_0
    const v0, 0x7f0801a0

    const v1, 0x7f080094

    invoke-direct {p0, v0, v1}, Lcom/parrot/freeflight/academy/AcademyLogInActivity;->showMessageDialog(II)V

    .line 375
    :goto_0
    return-void

    .line 370
    :cond_1
    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    .line 371
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/parrot/freeflight/academy/AcademyLogInActivity;->mRetrievePasswordEmailEditText:Landroid/widget/EditText;

    .line 373
    iget-object v0, p0, Lcom/parrot/freeflight/academy/AcademyLogInActivity;->mAcademyManager:Lcom/parrot/freeflight/core/academy/AcademyManager;

    iget-object v1, p0, Lcom/parrot/freeflight/academy/AcademyLogInActivity;->mResetPasswordListener:Lcom/parrot/freeflight/core/academy/AcademyManager$AcademyRequestListener;

    invoke-virtual {v0, p2, v1}, Lcom/parrot/freeflight/core/academy/AcademyManager;->requestPasswordReset(Ljava/lang/String;Lcom/parrot/freeflight/core/academy/AcademyManager$AcademyRequestListener;)I

    move-result v0

    iput v0, p0, Lcom/parrot/freeflight/academy/AcademyLogInActivity;->mRequestId:I

    .line 374
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/parrot/freeflight/academy/AcademyLogInActivity;->displayWaiting(Z)V

    goto :goto_0
.end method

.method private checkPermissionBeforeLogin()V
    .locals 3

    .prologue
    .line 246
    const-string v0, "android.permission.WRITE_EXTERNAL_STORAGE"

    invoke-static {p0, v0}, Landroid/support/v4/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_1

    .line 247
    const-string v0, "android.permission.WRITE_EXTERNAL_STORAGE"

    invoke-static {p0, v0}, Landroid/support/v4/app/ActivityCompat;->shouldShowRequestPermissionRationale(Landroid/app/Activity;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 248
    invoke-direct {p0}, Lcom/parrot/freeflight/academy/AcademyLogInActivity;->showPermissionRequestDialog()V

    .line 255
    :goto_0
    return-void

    .line 250
    :cond_0
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "android.permission.WRITE_EXTERNAL_STORAGE"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    invoke-static {p0, v0, v1}, Landroid/support/v4/app/ActivityCompat;->requestPermissions(Landroid/app/Activity;[Ljava/lang/String;I)V

    goto :goto_0

    .line 253
    :cond_1
    invoke-direct {p0}, Lcom/parrot/freeflight/academy/AcademyLogInActivity;->login()V

    goto :goto_0
.end method

.method private displayWaiting(Z)V
    .locals 3
    .param p1, "display"    # Z

    .prologue
    const/4 v1, 0x0

    .line 241
    iget-object v2, p0, Lcom/parrot/freeflight/academy/AcademyLogInActivity;->mWaitingProgress:Landroid/widget/ProgressBar;

    if-eqz p1, :cond_1

    move v0, v1

    :goto_0
    invoke-virtual {v2, v0}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 242
    iget-object v0, p0, Lcom/parrot/freeflight/academy/AcademyLogInActivity;->mBottomButtons:Landroid/view/View;

    if-eqz p1, :cond_0

    const/4 v1, 0x4

    :cond_0
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 243
    return-void

    .line 241
    :cond_1
    const/16 v0, 0x8

    goto :goto_0
.end method

.method private getErrorStringId(Ljava/lang/String;Z)I
    .locals 3
    .param p1, "originMsg"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p2, "emailSpecificMessages"    # Z
    .annotation build Landroid/support/annotation/StringRes;
    .end annotation

    .prologue
    .line 462
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_6

    .line 463
    if-eqz p2, :cond_1

    .line 464
    const-string v1, "21001"

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 465
    const v1, 0x7f080095

    .line 485
    :goto_0
    return v1

    .line 466
    :cond_0
    const-string v1, "21002"

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 467
    const v1, 0x7f080092

    goto :goto_0

    .line 470
    :cond_1
    const-string v1, "10001"

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 471
    const v1, 0x7f080099

    goto :goto_0

    .line 472
    :cond_2
    const-string v1, "10002"

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 473
    const v1, 0x7f080098

    goto :goto_0

    .line 474
    :cond_3
    const-string v1, "10010"

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 475
    const v1, 0x7f08009a

    goto :goto_0

    .line 477
    :cond_4
    sget-object v1, Lcom/parrot/freeflight/academy/AcademyLogInActivity;->SOMETHING_IS_ALREADY_REGISTERED:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_5
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 478
    .local v0, "errorCode":Ljava/lang/String;
    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 479
    const v1, 0x7f080097

    goto :goto_0

    .line 485
    .end local v0    # "errorCode":Ljava/lang/String;
    :cond_6
    const/4 v1, -0x1

    goto :goto_0
.end method

.method private login()V
    .locals 4

    .prologue
    .line 300
    iget-object v2, p0, Lcom/parrot/freeflight/academy/AcademyLogInActivity;->mLoginEditText:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 301
    .local v0, "login":Ljava/lang/String;
    iget-object v2, p0, Lcom/parrot/freeflight/academy/AcademyLogInActivity;->mPasswordEditText:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 302
    .local v1, "password":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_0

    .line 303
    const/4 v2, 0x1

    invoke-direct {p0, v2}, Lcom/parrot/freeflight/academy/AcademyLogInActivity;->displayWaiting(Z)V

    .line 304
    iget-object v2, p0, Lcom/parrot/freeflight/academy/AcademyLogInActivity;->mAcademyManager:Lcom/parrot/freeflight/core/academy/AcademyManager;

    iget-object v3, p0, Lcom/parrot/freeflight/academy/AcademyLogInActivity;->mLoginListener:Lcom/parrot/freeflight/core/academy/AcademyManager$AcademyRequestListener;

    invoke-virtual {v2, v0, v1, v3}, Lcom/parrot/freeflight/core/academy/AcademyManager;->connect(Ljava/lang/String;Ljava/lang/String;Lcom/parrot/freeflight/core/academy/AcademyManager$AcademyRequestListener;)I

    move-result v2

    iput v2, p0, Lcom/parrot/freeflight/academy/AcademyLogInActivity;->mRequestId:I

    .line 308
    :goto_0
    return-void

    .line 306
    :cond_0
    const v2, 0x7f08006c

    const v3, 0x7f080064

    invoke-direct {p0, v2, v3}, Lcom/parrot/freeflight/academy/AcademyLogInActivity;->showMessageDialog(II)V

    goto :goto_0
.end method

.method private loginFailed(Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;)V
    .locals 3
    .param p1, "error"    # Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;

    .prologue
    const v2, 0x7f08006c

    .line 399
    sget-object v0, Lcom/parrot/freeflight/academy/AcademyLogInActivity$9;->$SwitchMap$com$parrot$arsdk$aracademy$ARACADEMY_ERROR_ENUM:[I

    invoke-virtual {p1}, Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 407
    const v0, 0x7f080065

    invoke-direct {p0, v2, v0}, Lcom/parrot/freeflight/academy/AcademyLogInActivity;->showMessageDialog(II)V

    .line 411
    :goto_0
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/parrot/freeflight/academy/AcademyLogInActivity;->displayWaiting(Z)V

    .line 412
    const/4 v0, -0x1

    iput v0, p0, Lcom/parrot/freeflight/academy/AcademyLogInActivity;->mRequestId:I

    .line 413
    return-void

    .line 401
    :pswitch_0
    const v0, 0x7f080062

    invoke-direct {p0, v2, v0}, Lcom/parrot/freeflight/academy/AcademyLogInActivity;->showMessageDialog(II)V

    goto :goto_0

    .line 404
    :pswitch_1
    const v0, 0x7f08006b

    invoke-direct {p0, v2, v0}, Lcom/parrot/freeflight/academy/AcademyLogInActivity;->showMessageDialog(II)V

    goto :goto_0

    .line 399
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private loginSucceed()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 378
    const-string v2, "academy_shared_preferences"

    invoke-virtual {p0, v2, v4}, Lcom/parrot/freeflight/academy/AcademyLogInActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 379
    .local v1, "prefs":Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 380
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v2, "academy_remember_me"

    const/4 v3, 0x1

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 381
    const-string v2, "academy_username"

    iget-object v3, p0, Lcom/parrot/freeflight/academy/AcademyLogInActivity;->mLoginEditText:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 382
    const-string v2, "academy_password"

    iget-object v3, p0, Lcom/parrot/freeflight/academy/AcademyLogInActivity;->mPasswordEditText:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 387
    :goto_0
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 389
    iget-object v2, p0, Lcom/parrot/freeflight/academy/AcademyLogInActivity;->mAcademyManager:Lcom/parrot/freeflight/core/academy/AcademyManager;

    if-eqz v2, :cond_0

    .line 390
    iget-object v2, p0, Lcom/parrot/freeflight/academy/AcademyLogInActivity;->mAcademyManager:Lcom/parrot/freeflight/core/academy/AcademyManager;

    invoke-virtual {v2}, Lcom/parrot/freeflight/core/academy/AcademyManager;->registerSkyController()V

    .line 393
    :cond_0
    invoke-direct {p0, v4}, Lcom/parrot/freeflight/academy/AcademyLogInActivity;->displayWaiting(Z)V

    .line 394
    const/4 v2, -0x1

    iput v2, p0, Lcom/parrot/freeflight/academy/AcademyLogInActivity;->mRequestId:I

    .line 395
    invoke-virtual {p0}, Lcom/parrot/freeflight/academy/AcademyLogInActivity;->finish()V

    .line 396
    return-void

    .line 384
    :cond_1
    const-string v2, "academy_username"

    invoke-interface {v0, v2}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 385
    const-string v2, "academy_password"

    invoke-interface {v0, v2}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    goto :goto_0
.end method

.method private onPermissionDenied()V
    .locals 0

    .prologue
    .line 286
    return-void
.end method

.method private passwordForgotten(Ljava/lang/String;)V
    .locals 6
    .param p1, "email"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    const/4 v5, 0x0

    .line 326
    invoke-virtual {p0}, Lcom/parrot/freeflight/academy/AcademyLogInActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v3

    const v4, 0x7f040019

    invoke-virtual {v3, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 327
    .local v0, "customDialogView":Landroid/view/View;
    const v3, 0x7f0f0083

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/EditText;

    .line 329
    .local v2, "emailEditText":Landroid/widget/EditText;
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 330
    invoke-virtual {v2, p1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 333
    :cond_0
    new-instance v3, Landroid/support/v7/app/AlertDialog$Builder;

    invoke-direct {v3, p0}, Landroid/support/v7/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v4, 0x7f080090

    .line 334
    invoke-virtual {v3, v4}, Landroid/support/v7/app/AlertDialog$Builder;->setTitle(I)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v3

    const/4 v4, 0x0

    .line 335
    invoke-virtual {v3, v4}, Landroid/support/v7/app/AlertDialog$Builder;->setCancelable(Z)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v3

    .line 336
    invoke-virtual {v3, v0}, Landroid/support/v7/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v3

    const v4, 0x7f0803a8

    .line 337
    invoke-virtual {v3, v4, v5}, Landroid/support/v7/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v3

    const v4, 0x7f080111

    .line 338
    invoke-virtual {v3, v4, v5}, Landroid/support/v7/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v3

    .line 339
    invoke-virtual {v3}, Landroid/support/v7/app/AlertDialog$Builder;->create()Landroid/support/v7/app/AlertDialog;

    move-result-object v1

    .line 341
    .local v1, "dialog":Landroid/support/v7/app/AlertDialog;
    invoke-virtual {v1}, Landroid/support/v7/app/AlertDialog;->show()V

    .line 344
    const/4 v3, -0x1

    invoke-virtual {v1, v3}, Landroid/support/v7/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v3

    new-instance v4, Lcom/parrot/freeflight/academy/AcademyLogInActivity$7;

    invoke-direct {v4, p0, v1, v2}, Lcom/parrot/freeflight/academy/AcademyLogInActivity$7;-><init>(Lcom/parrot/freeflight/academy/AcademyLogInActivity;Landroid/support/v7/app/AlertDialog;Landroid/widget/EditText;)V

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 351
    new-instance v3, Lcom/parrot/freeflight/academy/AcademyLogInActivity$8;

    invoke-direct {v3, p0, v1, v2}, Lcom/parrot/freeflight/academy/AcademyLogInActivity$8;-><init>(Lcom/parrot/freeflight/academy/AcademyLogInActivity;Landroid/support/v7/app/AlertDialog;Landroid/widget/EditText;)V

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 361
    iput-object v2, p0, Lcom/parrot/freeflight/academy/AcademyLogInActivity;->mRetrievePasswordEmailEditText:Landroid/widget/EditText;

    .line 362
    return-void
.end method

.method private passwordResetFailed(Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;Lcom/parrot/arsdk/aracademy/ARAcademyResetPassword;)V
    .locals 9
    .param p1, "error"    # Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "model"    # Lcom/parrot/arsdk/aracademy/ARAcademyResetPassword;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    const v8, 0x7f080094

    const/4 v7, -0x1

    const/4 v6, 0x0

    const v5, 0x7f0801a0

    .line 422
    sget-object v3, Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;->ARACADEMY_ERROR_REQUEST_CONNECTION:Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;

    if-ne p1, v3, :cond_0

    .line 423
    const v3, 0x7f080062

    invoke-direct {p0, v5, v3}, Lcom/parrot/freeflight/academy/AcademyLogInActivity;->showMessageDialog(II)V

    .line 445
    :goto_0
    invoke-direct {p0, v6}, Lcom/parrot/freeflight/academy/AcademyLogInActivity;->displayWaiting(Z)V

    .line 446
    iput v7, p0, Lcom/parrot/freeflight/academy/AcademyLogInActivity;->mRequestId:I

    .line 447
    return-void

    .line 424
    :cond_0
    if-eqz p2, :cond_3

    .line 425
    invoke-virtual {p2}, Lcom/parrot/arsdk/aracademy/ARAcademyResetPassword;->getErrors()Lcom/parrot/arsdk/aracademy/ARAcademyErrors;

    move-result-object v0

    .line 426
    .local v0, "errors":Lcom/parrot/arsdk/aracademy/ARAcademyErrors;
    if-nez v0, :cond_1

    .line 427
    invoke-direct {p0, v5, v8}, Lcom/parrot/freeflight/academy/AcademyLogInActivity;->showMessageDialog(II)V

    goto :goto_0

    .line 429
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 430
    .local v2, "stringBuilder":Ljava/lang/StringBuilder;
    const v3, 0x7f08009b

    invoke-virtual {v0}, Lcom/parrot/arsdk/aracademy/ARAcademyErrors;->getUsername()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4, v6}, Lcom/parrot/freeflight/academy/AcademyLogInActivity;->getErrorStringId(Ljava/lang/String;Z)I

    move-result v4

    invoke-direct {p0, v2, v3, v4}, Lcom/parrot/freeflight/academy/AcademyLogInActivity;->addToStringBuilder(Ljava/lang/StringBuilder;II)V

    .line 431
    const v3, 0x7f080096

    invoke-virtual {v0}, Lcom/parrot/arsdk/aracademy/ARAcademyErrors;->getPassword()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4, v6}, Lcom/parrot/freeflight/academy/AcademyLogInActivity;->getErrorStringId(Ljava/lang/String;Z)I

    move-result v4

    invoke-direct {p0, v2, v3, v4}, Lcom/parrot/freeflight/academy/AcademyLogInActivity;->addToStringBuilder(Ljava/lang/StringBuilder;II)V

    .line 432
    const v3, 0x7f080093

    invoke-virtual {v0}, Lcom/parrot/arsdk/aracademy/ARAcademyErrors;->getEmail()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4, v6}, Lcom/parrot/freeflight/academy/AcademyLogInActivity;->getErrorStringId(Ljava/lang/String;Z)I

    move-result v4

    invoke-direct {p0, v2, v3, v4}, Lcom/parrot/freeflight/academy/AcademyLogInActivity;->addToStringBuilder(Ljava/lang/StringBuilder;II)V

    .line 433
    invoke-virtual {v0}, Lcom/parrot/arsdk/aracademy/ARAcademyErrors;->getEmail()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    invoke-direct {p0, v3, v4}, Lcom/parrot/freeflight/academy/AcademyLogInActivity;->getErrorStringId(Ljava/lang/String;Z)I

    move-result v3

    invoke-direct {p0, v2, v7, v3}, Lcom/parrot/freeflight/academy/AcademyLogInActivity;->addToStringBuilder(Ljava/lang/StringBuilder;II)V

    .line 434
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 435
    .local v1, "message":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 436
    invoke-direct {p0, v5, v8}, Lcom/parrot/freeflight/academy/AcademyLogInActivity;->showMessageDialog(II)V

    goto :goto_0

    .line 438
    :cond_2
    invoke-direct {p0, v5, v1}, Lcom/parrot/freeflight/academy/AcademyLogInActivity;->showMessageDialog(ILjava/lang/String;)V

    goto :goto_0

    .line 442
    .end local v0    # "errors":Lcom/parrot/arsdk/aracademy/ARAcademyErrors;
    .end local v1    # "message":Ljava/lang/String;
    .end local v2    # "stringBuilder":Ljava/lang/StringBuilder;
    :cond_3
    const v3, 0x7f080065

    invoke-direct {p0, v5, v3}, Lcom/parrot/freeflight/academy/AcademyLogInActivity;->showMessageDialog(II)V

    goto :goto_0
.end method

.method private passwordResetSucceed(Lcom/parrot/arsdk/aracademy/ARAcademyResetPassword;)V
    .locals 2
    .param p1, "model"    # Lcom/parrot/arsdk/aracademy/ARAcademyResetPassword;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 416
    const v0, 0x7f080090

    const v1, 0x7f08009c

    invoke-direct {p0, v0, v1}, Lcom/parrot/freeflight/academy/AcademyLogInActivity;->showMessageDialog(II)V

    .line 417
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/parrot/freeflight/academy/AcademyLogInActivity;->displayWaiting(Z)V

    .line 418
    const/4 v0, -0x1

    iput v0, p0, Lcom/parrot/freeflight/academy/AcademyLogInActivity;->mRequestId:I

    .line 419
    return-void
.end method

.method private showMessageDialog(II)V
    .locals 1
    .param p1, "titleId"    # I
        .annotation build Landroid/support/annotation/StringRes;
        .end annotation
    .end param
    .param p2, "messageId"    # I
        .annotation build Landroid/support/annotation/StringRes;
        .end annotation
    .end param

    .prologue
    .line 311
    invoke-virtual {p0, p2}, Lcom/parrot/freeflight/academy/AcademyLogInActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/parrot/freeflight/academy/AcademyLogInActivity;->showMessageDialog(ILjava/lang/String;)V

    .line 312
    return-void
.end method

.method private showMessageDialog(ILjava/lang/String;)V
    .locals 3
    .param p1, "titleId"    # I
        .annotation build Landroid/support/annotation/StringRes;
        .end annotation
    .end param
    .param p2, "message"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 315
    invoke-virtual {p0}, Lcom/parrot/freeflight/academy/AcademyLogInActivity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 316
    new-instance v0, Landroid/support/v7/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/support/v7/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 317
    invoke-virtual {v0, p1}, Landroid/support/v7/app/AlertDialog$Builder;->setTitle(I)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v0

    .line 318
    invoke-virtual {v0, p2}, Landroid/support/v7/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0803a8

    const/4 v2, 0x0

    .line 319
    invoke-virtual {v0, v1, v2}, Landroid/support/v7/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v0

    .line 320
    invoke-virtual {v0}, Landroid/support/v7/app/AlertDialog$Builder;->create()Landroid/support/v7/app/AlertDialog;

    move-result-object v0

    .line 321
    invoke-virtual {v0}, Landroid/support/v7/app/AlertDialog;->show()V

    .line 323
    :cond_0
    return-void
.end method

.method private showPermissionRequestDialog()V
    .locals 3

    .prologue
    .line 258
    new-instance v0, Lcom/parrot/freeflight/academy/AcademyLogInActivity$PermissionDialogFragment;

    invoke-direct {v0}, Lcom/parrot/freeflight/academy/AcademyLogInActivity$PermissionDialogFragment;-><init>()V

    .line 259
    .local v0, "dialogFragment":Lcom/parrot/freeflight/academy/AcademyLogInActivity$PermissionDialogFragment;
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/parrot/freeflight/academy/AcademyLogInActivity$PermissionDialogFragment;->setCancelable(Z)V

    .line 260
    invoke-virtual {p0}, Lcom/parrot/freeflight/academy/AcademyLogInActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    const-string v2, "ERROR_FRAGMENT_TAG"

    invoke-virtual {v0, v1, v2}, Lcom/parrot/freeflight/academy/AcademyLogInActivity$PermissionDialogFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    .line 261
    return-void
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 1
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 225
    invoke-super {p0, p1, p2, p3}, Lcom/parrot/freeflight/BaseAppCompatActivity;->onActivityResult(IILandroid/content/Intent;)V

    .line 226
    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    .line 227
    invoke-virtual {p0}, Lcom/parrot/freeflight/academy/AcademyLogInActivity;->finish()V

    .line 229
    :cond_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 17
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 93
    invoke-super/range {p0 .. p1}, Lcom/parrot/freeflight/BaseAppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    .line 94
    const v14, 0x7f04001b

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/parrot/freeflight/academy/AcademyLogInActivity;->setContentView(I)V

    .line 96
    invoke-static {}, Lcom/parrot/freeflight/core/CoreManager;->getInstance()Lcom/parrot/freeflight/core/CoreManager;

    move-result-object v14

    invoke-virtual {v14}, Lcom/parrot/freeflight/core/CoreManager;->getAcademyManager()Lcom/parrot/freeflight/core/academy/AcademyManager;

    move-result-object v14

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/parrot/freeflight/academy/AcademyLogInActivity;->mAcademyManager:Lcom/parrot/freeflight/core/academy/AcademyManager;

    .line 98
    const-string v14, "academy_shared_preferences"

    const/4 v15, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v14, v15}, Lcom/parrot/freeflight/academy/AcademyLogInActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v9

    .line 100
    .local v9, "sharedPreferences":Landroid/content/SharedPreferences;
    const v14, 0x7f0f008d

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/parrot/freeflight/academy/AcademyLogInActivity;->findViewById(I)Landroid/view/View;

    move-result-object v14

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/parrot/freeflight/academy/AcademyLogInActivity;->mRootLayout:Landroid/view/View;

    .line 101
    const v14, 0x7f0f008f

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/parrot/freeflight/academy/AcademyLogInActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageButton;

    .line 102
    .local v2, "backButton":Landroid/widget/ImageButton;
    const v14, 0x7f0f0090

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/parrot/freeflight/academy/AcademyLogInActivity;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Landroid/widget/TextView;

    .line 103
    .local v13, "titleTextView":Landroid/widget/TextView;
    const v14, 0x7f0f0091

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/parrot/freeflight/academy/AcademyLogInActivity;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    .line 104
    .local v8, "loginUsernameTextView":Landroid/widget/TextView;
    const v14, 0x7f0f0092

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/parrot/freeflight/academy/AcademyLogInActivity;->findViewById(I)Landroid/view/View;

    move-result-object v14

    check-cast v14, Landroid/widget/EditText;

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/parrot/freeflight/academy/AcademyLogInActivity;->mLoginEditText:Landroid/widget/EditText;

    .line 105
    const v14, 0x7f0f0093

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/parrot/freeflight/academy/AcademyLogInActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    .line 106
    .local v5, "loginPasswordTextView":Landroid/widget/TextView;
    const v14, 0x7f0f0094

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/parrot/freeflight/academy/AcademyLogInActivity;->findViewById(I)Landroid/view/View;

    move-result-object v14

    check-cast v14, Landroid/widget/EditText;

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/parrot/freeflight/academy/AcademyLogInActivity;->mPasswordEditText:Landroid/widget/EditText;

    .line 107
    const v14, 0x7f0f0095

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/parrot/freeflight/academy/AcademyLogInActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 108
    .local v4, "loginForgotPasswordTextView":Landroid/widget/TextView;
    const v14, 0x7f0f0096

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/parrot/freeflight/academy/AcademyLogInActivity;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    .line 109
    .local v7, "loginRememberMeTextView":Landroid/widget/TextView;
    const v14, 0x7f0f0097

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/parrot/freeflight/academy/AcademyLogInActivity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/RadioGroup;

    .line 110
    .local v6, "loginRememberMeRadioGroup":Landroid/widget/RadioGroup;
    const v14, 0x7f0f0099

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/parrot/freeflight/academy/AcademyLogInActivity;->findViewById(I)Landroid/view/View;

    move-result-object v14

    check-cast v14, Landroid/widget/RadioButton;

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/parrot/freeflight/academy/AcademyLogInActivity;->mLoginRememberMeNoRadioButton:Landroid/widget/RadioButton;

    .line 111
    const v14, 0x7f0f0098

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/parrot/freeflight/academy/AcademyLogInActivity;->findViewById(I)Landroid/view/View;

    move-result-object v14

    check-cast v14, Landroid/widget/RadioButton;

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/parrot/freeflight/academy/AcademyLogInActivity;->mLoginRememberMeYesRadioButton:Landroid/widget/RadioButton;

    .line 112
    const v14, 0x7f0f009b

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/parrot/freeflight/academy/AcademyLogInActivity;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/widget/TextView;

    .line 113
    .local v12, "signupTextView":Landroid/widget/TextView;
    const v14, 0x7f0f009c

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/parrot/freeflight/academy/AcademyLogInActivity;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/TextView;

    .line 114
    .local v11, "signupDescriptionTextView":Landroid/widget/TextView;
    const v14, 0x7f0f009e

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/parrot/freeflight/academy/AcademyLogInActivity;->findViewById(I)Landroid/view/View;

    move-result-object v14

    check-cast v14, Landroid/widget/Button;

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/parrot/freeflight/academy/AcademyLogInActivity;->mLoginButton:Landroid/widget/Button;

    .line 115
    const v14, 0x7f0f009d

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/parrot/freeflight/academy/AcademyLogInActivity;->findViewById(I)Landroid/view/View;

    move-result-object v14

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/parrot/freeflight/academy/AcademyLogInActivity;->mBottomButtons:Landroid/view/View;

    .line 116
    const v14, 0x7f0f009f

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/parrot/freeflight/academy/AcademyLogInActivity;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/Button;

    .line 117
    .local v10, "signupButton":Landroid/widget/Button;
    const v14, 0x7f0f009a

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/parrot/freeflight/academy/AcademyLogInActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 118
    .local v1, "academyImageView":Landroid/widget/ImageView;
    const v14, 0x7f0f00a0

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/parrot/freeflight/academy/AcademyLogInActivity;->findViewById(I)Landroid/view/View;

    move-result-object v14

    check-cast v14, Landroid/widget/ProgressBar;

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/parrot/freeflight/academy/AcademyLogInActivity;->mWaitingProgress:Landroid/widget/ProgressBar;

    .line 122
    new-instance v14, Lcom/parrot/freeflight/academy/AcademyLogInActivity$1;

    move-object/from16 v0, p0

    invoke-direct {v14, v0}, Lcom/parrot/freeflight/academy/AcademyLogInActivity$1;-><init>(Lcom/parrot/freeflight/academy/AcademyLogInActivity;)V

    invoke-virtual {v4, v14}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 131
    new-instance v14, Lcom/parrot/freeflight/academy/AcademyLogInActivity$2;

    move-object/from16 v0, p0

    invoke-direct {v14, v0, v9}, Lcom/parrot/freeflight/academy/AcademyLogInActivity$2;-><init>(Lcom/parrot/freeflight/academy/AcademyLogInActivity;Landroid/content/SharedPreferences;)V

    invoke-virtual {v6, v14}, Landroid/widget/RadioGroup;->setOnCheckedChangeListener(Landroid/widget/RadioGroup$OnCheckedChangeListener;)V

    .line 152
    const-string v14, "academy_remember_me"

    const/4 v15, 0x1

    invoke-interface {v9, v14, v15}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v14

    if-eqz v14, :cond_2

    .line 153
    const v14, 0x7f0f0098

    invoke-virtual {v6, v14}, Landroid/widget/RadioGroup;->check(I)V

    .line 158
    :goto_0
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/parrot/freeflight/academy/AcademyLogInActivity;->mLoginEditText:Landroid/widget/EditText;

    const-string v15, "academy_username"

    const-string v16, ""

    move-object/from16 v0, v16

    invoke-interface {v9, v15, v0}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 159
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/parrot/freeflight/academy/AcademyLogInActivity;->mPasswordEditText:Landroid/widget/EditText;

    const-string v15, "academy_password"

    const-string v16, ""

    move-object/from16 v0, v16

    invoke-interface {v9, v15, v0}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 163
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/parrot/freeflight/academy/AcademyLogInActivity;->mLoginButton:Landroid/widget/Button;

    new-instance v15, Lcom/parrot/freeflight/academy/AcademyLogInActivity$3;

    move-object/from16 v0, p0

    invoke-direct {v15, v0}, Lcom/parrot/freeflight/academy/AcademyLogInActivity$3;-><init>(Lcom/parrot/freeflight/academy/AcademyLogInActivity;)V

    invoke-virtual {v14, v15}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 171
    new-instance v14, Lcom/parrot/freeflight/academy/AcademyLogInActivity$4;

    move-object/from16 v0, p0

    invoke-direct {v14, v0}, Lcom/parrot/freeflight/academy/AcademyLogInActivity$4;-><init>(Lcom/parrot/freeflight/academy/AcademyLogInActivity;)V

    invoke-virtual {v10, v14}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 178
    if-eqz p1, :cond_1

    .line 179
    const-string v14, "saved_request_id"

    const/4 v15, -0x1

    move-object/from16 v0, p1

    invoke-virtual {v0, v14, v15}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v14

    move-object/from16 v0, p0

    iput v14, v0, Lcom/parrot/freeflight/academy/AcademyLogInActivity;->mRequestId:I

    .line 180
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/parrot/freeflight/academy/AcademyLogInActivity;->mAcademyManager:Lcom/parrot/freeflight/core/academy/AcademyManager;

    move-object/from16 v0, p0

    iget v15, v0, Lcom/parrot/freeflight/academy/AcademyLogInActivity;->mRequestId:I

    invoke-virtual {v14, v15}, Lcom/parrot/freeflight/core/academy/AcademyManager;->isStillRunning(I)Z

    move-result v14

    if-eqz v14, :cond_0

    .line 181
    const/4 v14, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Lcom/parrot/freeflight/academy/AcademyLogInActivity;->displayWaiting(Z)V

    .line 184
    :cond_0
    const-string v14, "saved_retrieve_password_email"

    const/4 v15, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v14, v15}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 185
    .local v3, "email":Ljava/lang/String;
    if-eqz v3, :cond_1

    .line 186
    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/parrot/freeflight/academy/AcademyLogInActivity;->passwordForgotten(Ljava/lang/String;)V

    .line 191
    .end local v3    # "email":Ljava/lang/String;
    :cond_1
    invoke-virtual {v1}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v14

    const v15, 0x7f0e0006

    move-object/from16 v0, p0

    invoke-static {v0, v14, v15}, Lcom/parrot/freeflight/util/ui/ThemeTintDrawable;->getTintedDrawable(Landroid/content/Context;Landroid/graphics/drawable/Drawable;I)Landroid/graphics/drawable/Drawable;

    move-result-object v14

    invoke-virtual {v1, v14}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 193
    new-instance v14, Lcom/parrot/freeflight/academy/AcademyLogInActivity$5;

    move-object/from16 v0, p0

    invoke-direct {v14, v0}, Lcom/parrot/freeflight/academy/AcademyLogInActivity$5;-><init>(Lcom/parrot/freeflight/academy/AcademyLogInActivity;)V

    invoke-virtual {v2, v14}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 199
    invoke-virtual {v2}, Landroid/widget/ImageButton;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v14

    move-object/from16 v0, p0

    invoke-static {v0, v14}, Lcom/parrot/freeflight/util/ui/ThemeTintDrawable;->getTintedDrawable(Landroid/content/Context;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v14

    invoke-virtual {v2, v14}, Landroid/widget/ImageButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 201
    new-instance v14, Lcom/parrot/freeflight/piloting/ui/util/ProductColor;

    move-object/from16 v0, p0

    invoke-direct {v14, v0}, Lcom/parrot/freeflight/piloting/ui/util/ProductColor;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/parrot/freeflight/academy/AcademyLogInActivity;->mProductColor:Lcom/parrot/freeflight/piloting/ui/util/ProductColor;

    .line 202
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/parrot/freeflight/academy/AcademyLogInActivity;->mProductColor:Lcom/parrot/freeflight/piloting/ui/util/ProductColor;

    new-instance v15, Lcom/parrot/freeflight/academy/AcademyLogInActivity$6;

    move-object/from16 v0, p0

    invoke-direct {v15, v0}, Lcom/parrot/freeflight/academy/AcademyLogInActivity$6;-><init>(Lcom/parrot/freeflight/academy/AcademyLogInActivity;)V

    invoke-virtual {v14, v15}, Lcom/parrot/freeflight/piloting/ui/util/ProductColor;->setOnThemeChangedListener(Lcom/parrot/freeflight/piloting/ui/util/ProductColor$OnThemeChangedListener;)V

    .line 209
    move-object/from16 v0, p0

    invoke-static {v0, v13}, Lcom/parrot/freeflight/util/ui/FontUtils;->applyFont(Landroid/content/Context;Landroid/view/View;)V

    .line 210
    move-object/from16 v0, p0

    invoke-static {v0, v8}, Lcom/parrot/freeflight/util/ui/FontUtils;->applyFont(Landroid/content/Context;Landroid/view/View;)V

    .line 211
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/parrot/freeflight/academy/AcademyLogInActivity;->mLoginEditText:Landroid/widget/EditText;

    move-object/from16 v0, p0

    invoke-static {v0, v14}, Lcom/parrot/freeflight/util/ui/FontUtils;->applyFont(Landroid/content/Context;Landroid/view/View;)V

    .line 212
    move-object/from16 v0, p0

    invoke-static {v0, v5}, Lcom/parrot/freeflight/util/ui/FontUtils;->applyFont(Landroid/content/Context;Landroid/view/View;)V

    .line 213
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/parrot/freeflight/academy/AcademyLogInActivity;->mPasswordEditText:Landroid/widget/EditText;

    move-object/from16 v0, p0

    invoke-static {v0, v14}, Lcom/parrot/freeflight/util/ui/FontUtils;->applyFont(Landroid/content/Context;Landroid/view/View;)V

    .line 214
    const/4 v14, 0x2

    move-object/from16 v0, p0

    invoke-static {v0, v4, v14}, Lcom/parrot/freeflight/util/ui/FontUtils;->applyFont(Landroid/content/Context;Landroid/view/View;I)V

    .line 215
    move-object/from16 v0, p0

    invoke-static {v0, v7}, Lcom/parrot/freeflight/util/ui/FontUtils;->applyFont(Landroid/content/Context;Landroid/view/View;)V

    .line 216
    const/4 v14, 0x2

    move-object/from16 v0, p0

    invoke-static {v0, v6, v14}, Lcom/parrot/freeflight/util/ui/FontUtils;->applyFont(Landroid/content/Context;Landroid/view/View;I)V

    .line 217
    move-object/from16 v0, p0

    invoke-static {v0, v12}, Lcom/parrot/freeflight/util/ui/FontUtils;->applyFont(Landroid/content/Context;Landroid/view/View;)V

    .line 218
    move-object/from16 v0, p0

    invoke-static {v0, v11}, Lcom/parrot/freeflight/util/ui/FontUtils;->applyFont(Landroid/content/Context;Landroid/view/View;)V

    .line 219
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/parrot/freeflight/academy/AcademyLogInActivity;->mLoginButton:Landroid/widget/Button;

    move-object/from16 v0, p0

    invoke-static {v0, v14}, Lcom/parrot/freeflight/util/ui/FontUtils;->applyFont(Landroid/content/Context;Landroid/view/View;)V

    .line 220
    move-object/from16 v0, p0

    invoke-static {v0, v10}, Lcom/parrot/freeflight/util/ui/FontUtils;->applyFont(Landroid/content/Context;Landroid/view/View;)V

    .line 221
    return-void

    .line 155
    :cond_2
    const v14, 0x7f0f0099

    invoke-virtual {v6, v14}, Landroid/widget/RadioGroup;->check(I)V

    goto/16 :goto_0
.end method

.method protected onDestroy()V
    .locals 2

    .prologue
    .line 533
    invoke-super {p0}, Lcom/parrot/freeflight/BaseAppCompatActivity;->onDestroy()V

    .line 534
    iget-object v0, p0, Lcom/parrot/freeflight/academy/AcademyLogInActivity;->mProductColor:Lcom/parrot/freeflight/piloting/ui/util/ProductColor;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/parrot/freeflight/piloting/ui/util/ProductColor;->setOnThemeChangedListener(Lcom/parrot/freeflight/piloting/ui/util/ProductColor$OnThemeChangedListener;)V

    .line 535
    iget-object v0, p0, Lcom/parrot/freeflight/academy/AcademyLogInActivity;->mProductColor:Lcom/parrot/freeflight/piloting/ui/util/ProductColor;

    invoke-virtual {v0}, Lcom/parrot/freeflight/piloting/ui/util/ProductColor;->destroy()V

    .line 536
    return-void
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .locals 1
    .param p1, "requestCode"    # I
    .param p2, "permissions"    # [Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3, "grantResults"    # [I
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 290
    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    .line 291
    array-length v0, p3

    if-lez v0, :cond_1

    const/4 v0, 0x0

    aget v0, p3, v0

    if-nez v0, :cond_1

    .line 292
    invoke-direct {p0}, Lcom/parrot/freeflight/academy/AcademyLogInActivity;->login()V

    .line 297
    :cond_0
    :goto_0
    return-void

    .line 294
    :cond_1
    invoke-direct {p0}, Lcom/parrot/freeflight/academy/AcademyLogInActivity;->onPermissionDenied()V

    goto :goto_0
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 233
    invoke-super {p0, p1}, Lcom/parrot/freeflight/BaseAppCompatActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 234
    const-string v0, "saved_request_id"

    iget v1, p0, Lcom/parrot/freeflight/academy/AcademyLogInActivity;->mRequestId:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 235
    iget-object v0, p0, Lcom/parrot/freeflight/academy/AcademyLogInActivity;->mRetrievePasswordEmailEditText:Landroid/widget/EditText;

    if-eqz v0, :cond_0

    .line 236
    const-string v0, "saved_retrieve_password_email"

    iget-object v1, p0, Lcom/parrot/freeflight/academy/AcademyLogInActivity;->mRetrievePasswordEmailEditText:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 238
    :cond_0
    return-void
.end method
