.class public Lcom/parrot/freeflight/academy/ProfileEditController;
.super Landroid/app/Fragment;
.source "ProfileEditController.java"

# interfaces
.implements Lcom/parrot/freeflight/academy/ProfileEditDialogFragment$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/parrot/freeflight/academy/ProfileEditController$AcademyListener;,
        Lcom/parrot/freeflight/academy/ProfileEditController$State;,
        Lcom/parrot/freeflight/academy/ProfileEditController$StateListener;
    }
.end annotation


# static fields
.field public static final REQUEST_DELETE:I = 0x2

.field public static final REQUEST_UPDATE_OK:I = 0x3

.field private static final TAG:Ljava/lang/String; = "ProfileEditController"

.field private static final TAG_DIALOG:Ljava/lang/String; = "dialog"


# instance fields
.field private mAcademyManager:Lcom/parrot/freeflight/core/academy/AcademyManager;

.field private mAvatar:Landroid/support/v4/graphics/drawable/RoundedBitmapDrawable;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private mAvatarPicturePath:Ljava/lang/String;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private final mAvatarUpdateListener:Lcom/parrot/freeflight/core/academy/AcademyManager$AcademyRequestListener;

.field private mEditedProfile:Lcom/parrot/arsdk/aracademy/ARAcademyProfile;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private final mEmailUpdateListener:Lcom/parrot/freeflight/core/academy/AcademyManager$AcademyRequestListener;

.field private final mProfileDeleteListener:Lcom/parrot/freeflight/core/academy/AcademyManager$AcademyRequestListener;

.field private final mProfileUpdateListener:Lcom/parrot/freeflight/core/academy/AcademyManager$AcademyRequestListener;

.field private mSaveProfileCanceled:Z

.field private mState:Lcom/parrot/freeflight/academy/ProfileEditController$State;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private mStateListener:Lcom/parrot/freeflight/academy/ProfileEditController$StateListener;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 25
    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    .line 42
    sget-object v0, Lcom/parrot/freeflight/academy/ProfileEditController$State;->STATE_DEFAULT:Lcom/parrot/freeflight/academy/ProfileEditController$State;

    iput-object v0, p0, Lcom/parrot/freeflight/academy/ProfileEditController;->mState:Lcom/parrot/freeflight/academy/ProfileEditController$State;

    .line 58
    new-instance v0, Lcom/parrot/freeflight/academy/ProfileEditController$AcademyListener;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/parrot/freeflight/academy/ProfileEditController$AcademyListener;-><init>(Lcom/parrot/freeflight/academy/ProfileEditController;I)V

    iput-object v0, p0, Lcom/parrot/freeflight/academy/ProfileEditController;->mAvatarUpdateListener:Lcom/parrot/freeflight/core/academy/AcademyManager$AcademyRequestListener;

    .line 60
    new-instance v0, Lcom/parrot/freeflight/academy/ProfileEditController$AcademyListener;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, Lcom/parrot/freeflight/academy/ProfileEditController$AcademyListener;-><init>(Lcom/parrot/freeflight/academy/ProfileEditController;I)V

    iput-object v0, p0, Lcom/parrot/freeflight/academy/ProfileEditController;->mEmailUpdateListener:Lcom/parrot/freeflight/core/academy/AcademyManager$AcademyRequestListener;

    .line 62
    new-instance v0, Lcom/parrot/freeflight/academy/ProfileEditController$AcademyListener;

    const/4 v1, 0x2

    invoke-direct {v0, p0, v1}, Lcom/parrot/freeflight/academy/ProfileEditController$AcademyListener;-><init>(Lcom/parrot/freeflight/academy/ProfileEditController;I)V

    iput-object v0, p0, Lcom/parrot/freeflight/academy/ProfileEditController;->mProfileUpdateListener:Lcom/parrot/freeflight/core/academy/AcademyManager$AcademyRequestListener;

    .line 64
    new-instance v0, Lcom/parrot/freeflight/academy/ProfileEditController$AcademyListener;

    const/4 v1, 0x3

    invoke-direct {v0, p0, v1}, Lcom/parrot/freeflight/academy/ProfileEditController$AcademyListener;-><init>(Lcom/parrot/freeflight/academy/ProfileEditController;I)V

    iput-object v0, p0, Lcom/parrot/freeflight/academy/ProfileEditController;->mProfileDeleteListener:Lcom/parrot/freeflight/core/academy/AcademyManager$AcademyRequestListener;

    return-void
.end method

.method static synthetic access$000(Lcom/parrot/freeflight/academy/ProfileEditController;)V
    .locals 0
    .param p0, "x0"    # Lcom/parrot/freeflight/academy/ProfileEditController;

    .prologue
    .line 25
    invoke-direct {p0}, Lcom/parrot/freeflight/academy/ProfileEditController;->onAvatarUpdateSuccess()V

    return-void
.end method

.method static synthetic access$100(Lcom/parrot/freeflight/academy/ProfileEditController;)V
    .locals 0
    .param p0, "x0"    # Lcom/parrot/freeflight/academy/ProfileEditController;

    .prologue
    .line 25
    invoke-direct {p0}, Lcom/parrot/freeflight/academy/ProfileEditController;->saveProfile()V

    return-void
.end method

.method static synthetic access$200(Lcom/parrot/freeflight/academy/ProfileEditController;)V
    .locals 0
    .param p0, "x0"    # Lcom/parrot/freeflight/academy/ProfileEditController;

    .prologue
    .line 25
    invoke-direct {p0}, Lcom/parrot/freeflight/academy/ProfileEditController;->onProfileUpdateSuccess()V

    return-void
.end method

.method static synthetic access$300(Lcom/parrot/freeflight/academy/ProfileEditController;)V
    .locals 0
    .param p0, "x0"    # Lcom/parrot/freeflight/academy/ProfileEditController;

    .prologue
    .line 25
    invoke-direct {p0}, Lcom/parrot/freeflight/academy/ProfileEditController;->onProfileDeleteSuccess()V

    return-void
.end method

.method static synthetic access$400(Lcom/parrot/freeflight/academy/ProfileEditController;Lcom/parrot/freeflight/academy/ProfileEditController$State;)V
    .locals 0
    .param p0, "x0"    # Lcom/parrot/freeflight/academy/ProfileEditController;
    .param p1, "x1"    # Lcom/parrot/freeflight/academy/ProfileEditController$State;

    .prologue
    .line 25
    invoke-direct {p0, p1}, Lcom/parrot/freeflight/academy/ProfileEditController;->notifyChanged(Lcom/parrot/freeflight/academy/ProfileEditController$State;)V

    return-void
.end method

.method private isEditedProfileValid()Z
    .locals 4

    .prologue
    const v3, 0x7f08048c

    const/4 v0, 0x0

    .line 114
    iget-object v1, p0, Lcom/parrot/freeflight/academy/ProfileEditController;->mEditedProfile:Lcom/parrot/arsdk/aracademy/ARAcademyProfile;

    if-eqz v1, :cond_1

    .line 115
    iget-object v1, p0, Lcom/parrot/freeflight/academy/ProfileEditController;->mEditedProfile:Lcom/parrot/arsdk/aracademy/ARAcademyProfile;

    invoke-virtual {v1}, Lcom/parrot/arsdk/aracademy/ARAcademyProfile;->getUser()Lcom/parrot/arsdk/aracademy/ARAcademyUser;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/parrot/freeflight/academy/ProfileEditController;->mEditedProfile:Lcom/parrot/arsdk/aracademy/ARAcademyProfile;

    invoke-virtual {v1}, Lcom/parrot/arsdk/aracademy/ARAcademyProfile;->getUser()Lcom/parrot/arsdk/aracademy/ARAcademyUser;

    move-result-object v1

    invoke-virtual {v1}, Lcom/parrot/arsdk/aracademy/ARAcademyUser;->getEmail()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/parrot/freeflight/academy/ProfileEditController;->mEditedProfile:Lcom/parrot/arsdk/aracademy/ARAcademyProfile;

    invoke-virtual {v1}, Lcom/parrot/arsdk/aracademy/ARAcademyProfile;->getUser()Lcom/parrot/arsdk/aracademy/ARAcademyUser;

    move-result-object v1

    invoke-virtual {v1}, Lcom/parrot/arsdk/aracademy/ARAcademyUser;->getEmail()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    sget-object v1, Landroid/util/Patterns;->EMAIL_ADDRESS:Ljava/util/regex/Pattern;

    iget-object v2, p0, Lcom/parrot/freeflight/academy/ProfileEditController;->mEditedProfile:Lcom/parrot/arsdk/aracademy/ARAcademyProfile;

    invoke-virtual {v2}, Lcom/parrot/arsdk/aracademy/ARAcademyProfile;->getUser()Lcom/parrot/arsdk/aracademy/ARAcademyUser;

    move-result-object v2

    invoke-virtual {v2}, Lcom/parrot/arsdk/aracademy/ARAcademyUser;->getEmail()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/regex/Matcher;->matches()Z

    move-result v1

    if-nez v1, :cond_0

    .line 116
    const v1, 0x7f080487

    invoke-virtual {p0, v3, v1}, Lcom/parrot/freeflight/academy/ProfileEditController;->showErrorDialog(II)V

    .line 124
    :goto_0
    return v0

    .line 119
    :cond_0
    iget-object v1, p0, Lcom/parrot/freeflight/academy/ProfileEditController;->mEditedProfile:Lcom/parrot/arsdk/aracademy/ARAcademyProfile;

    invoke-virtual {v1}, Lcom/parrot/arsdk/aracademy/ARAcademyProfile;->getWebsite()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/parrot/freeflight/academy/ProfileEditController;->mEditedProfile:Lcom/parrot/arsdk/aracademy/ARAcademyProfile;

    invoke-virtual {v1}, Lcom/parrot/arsdk/aracademy/ARAcademyProfile;->getWebsite()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    sget-object v1, Landroid/util/Patterns;->WEB_URL:Ljava/util/regex/Pattern;

    iget-object v2, p0, Lcom/parrot/freeflight/academy/ProfileEditController;->mEditedProfile:Lcom/parrot/arsdk/aracademy/ARAcademyProfile;

    invoke-virtual {v2}, Lcom/parrot/arsdk/aracademy/ARAcademyProfile;->getWebsite()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/regex/Matcher;->matches()Z

    move-result v1

    if-nez v1, :cond_1

    .line 120
    const v1, 0x7f080488

    invoke-virtual {p0, v3, v1}, Lcom/parrot/freeflight/academy/ProfileEditController;->showErrorDialog(II)V

    goto :goto_0

    .line 124
    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private notifyChanged(Lcom/parrot/freeflight/academy/ProfileEditController$State;)V
    .locals 1
    .param p1, "state"    # Lcom/parrot/freeflight/academy/ProfileEditController$State;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 227
    iput-object p1, p0, Lcom/parrot/freeflight/academy/ProfileEditController;->mState:Lcom/parrot/freeflight/academy/ProfileEditController$State;

    .line 228
    iget-object v0, p0, Lcom/parrot/freeflight/academy/ProfileEditController;->mStateListener:Lcom/parrot/freeflight/academy/ProfileEditController$StateListener;

    if-eqz v0, :cond_0

    .line 229
    iget-object v0, p0, Lcom/parrot/freeflight/academy/ProfileEditController;->mStateListener:Lcom/parrot/freeflight/academy/ProfileEditController$StateListener;

    invoke-interface {v0, p1}, Lcom/parrot/freeflight/academy/ProfileEditController$StateListener;->onStateChanged(Lcom/parrot/freeflight/academy/ProfileEditController$State;)V

    .line 231
    :cond_0
    return-void
.end method

.method private onAvatarUpdateSuccess()V
    .locals 2

    .prologue
    .line 163
    iget-object v0, p0, Lcom/parrot/freeflight/academy/ProfileEditController;->mAcademyManager:Lcom/parrot/freeflight/core/academy/AcademyManager;

    iget-object v1, p0, Lcom/parrot/freeflight/academy/ProfileEditController;->mAvatar:Landroid/support/v4/graphics/drawable/RoundedBitmapDrawable;

    invoke-virtual {v0, v1}, Lcom/parrot/freeflight/core/academy/AcademyManager;->setAvatar(Landroid/support/v4/graphics/drawable/RoundedBitmapDrawable;)V

    .line 164
    invoke-direct {p0}, Lcom/parrot/freeflight/academy/ProfileEditController;->saveEmail()V

    .line 165
    return-void
.end method

.method private onProfileDeleteSuccess()V
    .locals 3

    .prologue
    .line 174
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/parrot/freeflight/academy/ProfileEditController;->mEditedProfile:Lcom/parrot/arsdk/aracademy/ARAcademyProfile;

    .line 175
    iget-object v1, p0, Lcom/parrot/freeflight/academy/ProfileEditController;->mAcademyManager:Lcom/parrot/freeflight/core/academy/AcademyManager;

    invoke-virtual {v1}, Lcom/parrot/freeflight/core/academy/AcademyManager;->disconnect()V

    .line 176
    invoke-virtual {p0}, Lcom/parrot/freeflight/academy/ProfileEditController;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 177
    .local v0, "activity":Landroid/app/Activity;
    if-eqz v0, :cond_0

    .line 178
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/parrot/freeflight/academy/AcademyLogInActivity;

    invoke-direct {v1, v0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v1}, Lcom/parrot/freeflight/academy/ProfileEditController;->startActivity(Landroid/content/Intent;)V

    .line 179
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/Activity;->setResult(I)V

    .line 180
    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 182
    :cond_0
    return-void
.end method

.method private onProfileUpdateSuccess()V
    .locals 6

    .prologue
    .line 168
    iget-object v0, p0, Lcom/parrot/freeflight/academy/ProfileEditController;->mAcademyManager:Lcom/parrot/freeflight/core/academy/AcademyManager;

    iget-object v1, p0, Lcom/parrot/freeflight/academy/ProfileEditController;->mEditedProfile:Lcom/parrot/arsdk/aracademy/ARAcademyProfile;

    invoke-virtual {v0, v1}, Lcom/parrot/freeflight/core/academy/AcademyManager;->setProfile(Lcom/parrot/arsdk/aracademy/ARAcademyProfile;)V

    .line 169
    sget-object v0, Lcom/parrot/freeflight/academy/ProfileEditController$State;->STATE_DEFAULT:Lcom/parrot/freeflight/academy/ProfileEditController$State;

    invoke-direct {p0, v0}, Lcom/parrot/freeflight/academy/ProfileEditController;->notifyChanged(Lcom/parrot/freeflight/academy/ProfileEditController$State;)V

    .line 170
    const v1, 0x7f08048c

    const v2, 0x7f08048b

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x3

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/parrot/freeflight/academy/ProfileEditController;->showDialog(IIZZI)V

    .line 171
    return-void
.end method

.method private saveEmail()V
    .locals 5

    .prologue
    .line 128
    iget-boolean v3, p0, Lcom/parrot/freeflight/academy/ProfileEditController;->mSaveProfileCanceled:Z

    if-eqz v3, :cond_0

    .line 129
    sget-object v3, Lcom/parrot/freeflight/academy/ProfileEditController$State;->STATE_DEFAULT:Lcom/parrot/freeflight/academy/ProfileEditController$State;

    invoke-direct {p0, v3}, Lcom/parrot/freeflight/academy/ProfileEditController;->notifyChanged(Lcom/parrot/freeflight/academy/ProfileEditController$State;)V

    .line 150
    :goto_0
    return-void

    .line 133
    :cond_0
    const/4 v0, 0x0

    .line 134
    .local v0, "academyEmail":Lcom/parrot/arsdk/aracademy/ARAcademyEmail;
    iget-object v3, p0, Lcom/parrot/freeflight/academy/ProfileEditController;->mAcademyManager:Lcom/parrot/freeflight/core/academy/AcademyManager;

    invoke-virtual {v3}, Lcom/parrot/freeflight/core/academy/AcademyManager;->getProfile()Lcom/parrot/arsdk/aracademy/ARAcademyProfile;

    move-result-object v2

    .line 135
    .local v2, "originProfile":Lcom/parrot/arsdk/aracademy/ARAcademyProfile;
    if-eqz v2, :cond_1

    invoke-virtual {v2}, Lcom/parrot/arsdk/aracademy/ARAcademyProfile;->getUser()Lcom/parrot/arsdk/aracademy/ARAcademyUser;

    move-result-object v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/parrot/freeflight/academy/ProfileEditController;->mEditedProfile:Lcom/parrot/arsdk/aracademy/ARAcademyProfile;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/parrot/freeflight/academy/ProfileEditController;->mEditedProfile:Lcom/parrot/arsdk/aracademy/ARAcademyProfile;

    invoke-virtual {v3}, Lcom/parrot/arsdk/aracademy/ARAcademyProfile;->getUser()Lcom/parrot/arsdk/aracademy/ARAcademyUser;

    move-result-object v3

    if-eqz v3, :cond_1

    invoke-virtual {v2}, Lcom/parrot/arsdk/aracademy/ARAcademyProfile;->getUser()Lcom/parrot/arsdk/aracademy/ARAcademyUser;

    move-result-object v3

    invoke-virtual {v3}, Lcom/parrot/arsdk/aracademy/ARAcademyUser;->getEmail()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/parrot/freeflight/academy/ProfileEditController;->mEditedProfile:Lcom/parrot/arsdk/aracademy/ARAcademyProfile;

    invoke-virtual {v4}, Lcom/parrot/arsdk/aracademy/ARAcademyProfile;->getUser()Lcom/parrot/arsdk/aracademy/ARAcademyUser;

    move-result-object v4

    invoke-virtual {v4}, Lcom/parrot/arsdk/aracademy/ARAcademyUser;->getEmail()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 136
    iget-object v3, p0, Lcom/parrot/freeflight/academy/ProfileEditController;->mEditedProfile:Lcom/parrot/arsdk/aracademy/ARAcademyProfile;

    invoke-virtual {v3}, Lcom/parrot/arsdk/aracademy/ARAcademyProfile;->getUser()Lcom/parrot/arsdk/aracademy/ARAcademyUser;

    move-result-object v3

    invoke-virtual {v3}, Lcom/parrot/arsdk/aracademy/ARAcademyUser;->getEmail()Ljava/lang/String;

    move-result-object v1

    .line 137
    .local v1, "email":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 138
    new-instance v0, Lcom/parrot/arsdk/aracademy/ARAcademyEmail;

    .end local v0    # "academyEmail":Lcom/parrot/arsdk/aracademy/ARAcademyEmail;
    invoke-direct {v0}, Lcom/parrot/arsdk/aracademy/ARAcademyEmail;-><init>()V

    .line 139
    .restart local v0    # "academyEmail":Lcom/parrot/arsdk/aracademy/ARAcademyEmail;
    invoke-virtual {v0, v1}, Lcom/parrot/arsdk/aracademy/ARAcademyEmail;->setEmail(Ljava/lang/String;)V

    .line 145
    .end local v1    # "email":Ljava/lang/String;
    :cond_1
    :goto_1
    if-eqz v0, :cond_3

    .line 146
    iget-object v3, p0, Lcom/parrot/freeflight/academy/ProfileEditController;->mAcademyManager:Lcom/parrot/freeflight/core/academy/AcademyManager;

    iget-object v4, p0, Lcom/parrot/freeflight/academy/ProfileEditController;->mEmailUpdateListener:Lcom/parrot/freeflight/core/academy/AcademyManager$AcademyRequestListener;

    invoke-virtual {v3, v0, v4}, Lcom/parrot/freeflight/core/academy/AcademyManager;->updateEmail(Lcom/parrot/arsdk/aracademy/ARAcademyEmail;Lcom/parrot/freeflight/core/academy/AcademyManager$AcademyRequestListener;)V

    goto :goto_0

    .line 141
    .restart local v1    # "email":Ljava/lang/String;
    :cond_2
    iget-object v3, p0, Lcom/parrot/freeflight/academy/ProfileEditController;->mEditedProfile:Lcom/parrot/arsdk/aracademy/ARAcademyProfile;

    invoke-virtual {v3}, Lcom/parrot/arsdk/aracademy/ARAcademyProfile;->getUser()Lcom/parrot/arsdk/aracademy/ARAcademyUser;

    move-result-object v3

    invoke-virtual {v2}, Lcom/parrot/arsdk/aracademy/ARAcademyProfile;->getUser()Lcom/parrot/arsdk/aracademy/ARAcademyUser;

    move-result-object v4

    invoke-virtual {v4}, Lcom/parrot/arsdk/aracademy/ARAcademyUser;->getEmail()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/parrot/arsdk/aracademy/ARAcademyUser;->setEmail(Ljava/lang/String;)V

    goto :goto_1

    .line 148
    .end local v1    # "email":Ljava/lang/String;
    :cond_3
    invoke-direct {p0}, Lcom/parrot/freeflight/academy/ProfileEditController;->saveProfile()V

    goto :goto_0
.end method

.method private saveProfile()V
    .locals 4

    .prologue
    .line 153
    iget-boolean v0, p0, Lcom/parrot/freeflight/academy/ProfileEditController;->mSaveProfileCanceled:Z

    if-eqz v0, :cond_1

    .line 154
    sget-object v0, Lcom/parrot/freeflight/academy/ProfileEditController$State;->STATE_DEFAULT:Lcom/parrot/freeflight/academy/ProfileEditController$State;

    invoke-direct {p0, v0}, Lcom/parrot/freeflight/academy/ProfileEditController;->notifyChanged(Lcom/parrot/freeflight/academy/ProfileEditController$State;)V

    .line 160
    :cond_0
    :goto_0
    return-void

    .line 157
    :cond_1
    iget-object v0, p0, Lcom/parrot/freeflight/academy/ProfileEditController;->mEditedProfile:Lcom/parrot/arsdk/aracademy/ARAcademyProfile;

    if-eqz v0, :cond_0

    .line 158
    iget-object v0, p0, Lcom/parrot/freeflight/academy/ProfileEditController;->mAcademyManager:Lcom/parrot/freeflight/core/academy/AcademyManager;

    iget-object v1, p0, Lcom/parrot/freeflight/academy/ProfileEditController;->mEditedProfile:Lcom/parrot/arsdk/aracademy/ARAcademyProfile;

    iget-object v2, p0, Lcom/parrot/freeflight/academy/ProfileEditController;->mAcademyManager:Lcom/parrot/freeflight/core/academy/AcademyManager;

    invoke-virtual {v2}, Lcom/parrot/freeflight/core/academy/AcademyManager;->getProfile()Lcom/parrot/arsdk/aracademy/ARAcademyProfile;

    move-result-object v2

    iget-object v3, p0, Lcom/parrot/freeflight/academy/ProfileEditController;->mProfileUpdateListener:Lcom/parrot/freeflight/core/academy/AcademyManager$AcademyRequestListener;

    invoke-virtual {v0, v1, v2, v3}, Lcom/parrot/freeflight/core/academy/AcademyManager;->updateProfile(Lcom/parrot/arsdk/aracademy/ARAcademyProfile;Lcom/parrot/arsdk/aracademy/ARAcademyProfile;Lcom/parrot/freeflight/core/academy/AcademyManager$AcademyRequestListener;)V

    goto :goto_0
.end method


# virtual methods
.method public cancelSaving()V
    .locals 1

    .prologue
    .line 109
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/parrot/freeflight/academy/ProfileEditController;->mSaveProfileCanceled:Z

    .line 110
    sget-object v0, Lcom/parrot/freeflight/academy/ProfileEditController$State;->STATE_CANCELING:Lcom/parrot/freeflight/academy/ProfileEditController$State;

    invoke-direct {p0, v0}, Lcom/parrot/freeflight/academy/ProfileEditController;->notifyChanged(Lcom/parrot/freeflight/academy/ProfileEditController$State;)V

    .line 111
    return-void
.end method

.method public getAvatar()Landroid/support/v4/graphics/drawable/RoundedBitmapDrawable;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 88
    iget-object v0, p0, Lcom/parrot/freeflight/academy/ProfileEditController;->mAvatar:Landroid/support/v4/graphics/drawable/RoundedBitmapDrawable;

    return-object v0
.end method

.method public getEditedProfile()Lcom/parrot/arsdk/aracademy/ARAcademyProfile;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 79
    iget-object v0, p0, Lcom/parrot/freeflight/academy/ProfileEditController;->mEditedProfile:Lcom/parrot/arsdk/aracademy/ARAcademyProfile;

    return-object v0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 1
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 246
    iget-object v0, p0, Lcom/parrot/freeflight/academy/ProfileEditController;->mAcademyManager:Lcom/parrot/freeflight/core/academy/AcademyManager;

    invoke-virtual {v0, p1, p2, p3}, Lcom/parrot/freeflight/core/academy/AcademyManager;->onFacebookActivityResult(IILandroid/content/Intent;)Z

    .line 247
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 68
    invoke-super {p0, p1}, Landroid/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 69
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/parrot/freeflight/academy/ProfileEditController;->setRetainInstance(Z)V

    .line 71
    invoke-static {}, Lcom/parrot/freeflight/core/CoreManager;->getInstance()Lcom/parrot/freeflight/core/CoreManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/parrot/freeflight/core/CoreManager;->getAcademyManager()Lcom/parrot/freeflight/core/academy/AcademyManager;

    move-result-object v0

    iput-object v0, p0, Lcom/parrot/freeflight/academy/ProfileEditController;->mAcademyManager:Lcom/parrot/freeflight/core/academy/AcademyManager;

    .line 72
    iget-object v0, p0, Lcom/parrot/freeflight/academy/ProfileEditController;->mAcademyManager:Lcom/parrot/freeflight/core/academy/AcademyManager;

    invoke-virtual {v0}, Lcom/parrot/freeflight/core/academy/AcademyManager;->getProfile()Lcom/parrot/arsdk/aracademy/ARAcademyProfile;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 73
    iget-object v0, p0, Lcom/parrot/freeflight/academy/ProfileEditController;->mAcademyManager:Lcom/parrot/freeflight/core/academy/AcademyManager;

    invoke-virtual {v0}, Lcom/parrot/freeflight/core/academy/AcademyManager;->getProfile()Lcom/parrot/arsdk/aracademy/ARAcademyProfile;

    move-result-object v0

    invoke-virtual {v0}, Lcom/parrot/arsdk/aracademy/ARAcademyProfile;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/parrot/arsdk/aracademy/ARAcademyProfile;

    iput-object v0, p0, Lcom/parrot/freeflight/academy/ProfileEditController;->mEditedProfile:Lcom/parrot/arsdk/aracademy/ARAcademyProfile;

    .line 75
    :cond_0
    return-void
.end method

.method public onDialogClick(II)V
    .locals 2
    .param p1, "requestCode"    # I
    .param p2, "buttonType"    # I

    .prologue
    .line 212
    packed-switch p1, :pswitch_data_0

    .line 224
    :cond_0
    :goto_0
    return-void

    .line 214
    :pswitch_0
    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    .line 215
    sget-object v0, Lcom/parrot/freeflight/academy/ProfileEditController$State;->STATE_DELETING:Lcom/parrot/freeflight/academy/ProfileEditController$State;

    invoke-direct {p0, v0}, Lcom/parrot/freeflight/academy/ProfileEditController;->notifyChanged(Lcom/parrot/freeflight/academy/ProfileEditController$State;)V

    .line 216
    iget-object v0, p0, Lcom/parrot/freeflight/academy/ProfileEditController;->mAcademyManager:Lcom/parrot/freeflight/core/academy/AcademyManager;

    iget-object v1, p0, Lcom/parrot/freeflight/academy/ProfileEditController;->mProfileDeleteListener:Lcom/parrot/freeflight/core/academy/AcademyManager$AcademyRequestListener;

    invoke-virtual {v0, v1}, Lcom/parrot/freeflight/core/academy/AcademyManager;->deleteProfile(Lcom/parrot/freeflight/core/academy/AcademyManager$AcademyRequestListener;)V

    goto :goto_0

    .line 220
    :pswitch_1
    invoke-virtual {p0}, Lcom/parrot/freeflight/academy/ProfileEditController;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    goto :goto_0

    .line 212
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public registerListener(Lcom/parrot/freeflight/academy/ProfileEditController$StateListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/parrot/freeflight/academy/ProfileEditController$StateListener;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 234
    iput-object p1, p0, Lcom/parrot/freeflight/academy/ProfileEditController;->mStateListener:Lcom/parrot/freeflight/academy/ProfileEditController$StateListener;

    .line 235
    iget-object v0, p0, Lcom/parrot/freeflight/academy/ProfileEditController;->mState:Lcom/parrot/freeflight/academy/ProfileEditController$State;

    invoke-direct {p0, v0}, Lcom/parrot/freeflight/academy/ProfileEditController;->notifyChanged(Lcom/parrot/freeflight/academy/ProfileEditController$State;)V

    .line 236
    return-void
.end method

.method public save()V
    .locals 3

    .prologue
    .line 96
    invoke-direct {p0}, Lcom/parrot/freeflight/academy/ProfileEditController;->isEditedProfileValid()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 97
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/parrot/freeflight/academy/ProfileEditController;->mSaveProfileCanceled:Z

    .line 98
    sget-object v0, Lcom/parrot/freeflight/academy/ProfileEditController$State;->STATE_SAVING:Lcom/parrot/freeflight/academy/ProfileEditController$State;

    invoke-direct {p0, v0}, Lcom/parrot/freeflight/academy/ProfileEditController;->notifyChanged(Lcom/parrot/freeflight/academy/ProfileEditController$State;)V

    .line 100
    iget-object v0, p0, Lcom/parrot/freeflight/academy/ProfileEditController;->mAvatarPicturePath:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 101
    iget-object v0, p0, Lcom/parrot/freeflight/academy/ProfileEditController;->mAcademyManager:Lcom/parrot/freeflight/core/academy/AcademyManager;

    iget-object v1, p0, Lcom/parrot/freeflight/academy/ProfileEditController;->mAvatarPicturePath:Ljava/lang/String;

    iget-object v2, p0, Lcom/parrot/freeflight/academy/ProfileEditController;->mAvatarUpdateListener:Lcom/parrot/freeflight/core/academy/AcademyManager$AcademyRequestListener;

    invoke-virtual {v0, v1, v2}, Lcom/parrot/freeflight/core/academy/AcademyManager;->updateAvatar(Ljava/lang/String;Lcom/parrot/freeflight/core/academy/AcademyManager$AcademyRequestListener;)V

    .line 106
    :cond_0
    :goto_0
    return-void

    .line 103
    :cond_1
    invoke-direct {p0}, Lcom/parrot/freeflight/academy/ProfileEditController;->saveEmail()V

    goto :goto_0
.end method

.method public setAvatar(Landroid/support/v4/graphics/drawable/RoundedBitmapDrawable;)V
    .locals 0
    .param p1, "avatar"    # Landroid/support/v4/graphics/drawable/RoundedBitmapDrawable;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 92
    iput-object p1, p0, Lcom/parrot/freeflight/academy/ProfileEditController;->mAvatar:Landroid/support/v4/graphics/drawable/RoundedBitmapDrawable;

    .line 93
    return-void
.end method

.method public setAvatarPicturePath(Ljava/lang/String;)V
    .locals 0
    .param p1, "avatarPicturePath"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 83
    iput-object p1, p0, Lcom/parrot/freeflight/academy/ProfileEditController;->mAvatarPicturePath:Ljava/lang/String;

    .line 84
    return-void
.end method

.method public showDialog(IIZZI)V
    .locals 6
    .param p1, "title"    # I
        .annotation build Landroid/support/annotation/StringRes;
        .end annotation
    .end param
    .param p2, "message"    # I
        .annotation build Landroid/support/annotation/StringRes;
        .end annotation
    .end param
    .param p3, "displayOkButton"    # Z
    .param p4, "displayCancelButton"    # Z
    .param p5, "requestCode"    # I

    .prologue
    const/4 v2, 0x0

    .line 189
    invoke-virtual {p0}, Lcom/parrot/freeflight/academy/ProfileEditController;->isAdded()Z

    move-result v0

    if-nez v0, :cond_0

    .line 195
    :goto_0
    return-void

    .line 192
    :cond_0
    if-eqz p1, :cond_2

    invoke-virtual {p0, p1}, Lcom/parrot/freeflight/academy/ProfileEditController;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 193
    .local v1, "titleStr":Ljava/lang/String;
    :goto_1
    if-eqz p2, :cond_1

    invoke-virtual {p0, p2}, Lcom/parrot/freeflight/academy/ProfileEditController;->getString(I)Ljava/lang/String;

    move-result-object v2

    .local v2, "messageStr":Ljava/lang/String;
    :cond_1
    move-object v0, p0

    move v3, p3

    move v4, p4

    move v5, p5

    .line 194
    invoke-virtual/range {v0 .. v5}, Lcom/parrot/freeflight/academy/ProfileEditController;->showDialog(Ljava/lang/String;Ljava/lang/String;ZZI)V

    goto :goto_0

    .end local v1    # "titleStr":Ljava/lang/String;
    .end local v2    # "messageStr":Ljava/lang/String;
    :cond_2
    move-object v1, v2

    .line 192
    goto :goto_1
.end method

.method public showDialog(Ljava/lang/String;Ljava/lang/String;ZZI)V
    .locals 3
    .param p1, "title"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p2, "message"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p3, "displayOkButton"    # Z
    .param p4, "displayCancelButton"    # Z
    .param p5, "requestCode"    # I

    .prologue
    .line 198
    invoke-virtual {p0}, Lcom/parrot/freeflight/academy/ProfileEditController;->isAdded()Z

    move-result v1

    if-nez v1, :cond_0

    .line 208
    :goto_0
    return-void

    .line 201
    :cond_0
    invoke-virtual {p0}, Lcom/parrot/freeflight/academy/ProfileEditController;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    const-string v2, "dialog"

    invoke-virtual {v1, v2}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v0

    check-cast v0, Landroid/app/DialogFragment;

    .line 202
    .local v0, "dialog":Landroid/app/DialogFragment;
    if-eqz v0, :cond_1

    .line 203
    invoke-virtual {v0}, Landroid/app/DialogFragment;->dismiss()V

    .line 205
    :cond_1
    invoke-static {p1, p2, p3, p4, p5}, Lcom/parrot/freeflight/academy/ProfileEditDialogFragment;->newInstance(Ljava/lang/String;Ljava/lang/String;ZZI)Lcom/parrot/freeflight/academy/ProfileEditDialogFragment;

    move-result-object v0

    .line 206
    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Landroid/app/DialogFragment;->setTargetFragment(Landroid/app/Fragment;I)V

    .line 207
    invoke-virtual {p0}, Lcom/parrot/freeflight/academy/ProfileEditController;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    const-string v2, "dialog"

    invoke-virtual {v0, v1, v2}, Landroid/app/DialogFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public showErrorDialog(II)V
    .locals 6
    .param p1, "title"    # I
        .annotation build Landroid/support/annotation/StringRes;
        .end annotation
    .end param
    .param p2, "message"    # I
        .annotation build Landroid/support/annotation/StringRes;
        .end annotation
    .end param

    .prologue
    const/4 v4, 0x0

    .line 185
    const/4 v3, 0x1

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v5, v4

    invoke-virtual/range {v0 .. v5}, Lcom/parrot/freeflight/academy/ProfileEditController;->showDialog(IIZZI)V

    .line 186
    return-void
.end method

.method public unregisterListener(Lcom/parrot/freeflight/academy/ProfileEditController$StateListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/parrot/freeflight/academy/ProfileEditController$StateListener;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 239
    iget-object v0, p0, Lcom/parrot/freeflight/academy/ProfileEditController;->mStateListener:Lcom/parrot/freeflight/academy/ProfileEditController$StateListener;

    if-ne v0, p1, :cond_0

    .line 240
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/parrot/freeflight/academy/ProfileEditController;->mStateListener:Lcom/parrot/freeflight/academy/ProfileEditController$StateListener;

    .line 242
    :cond_0
    return-void
.end method
