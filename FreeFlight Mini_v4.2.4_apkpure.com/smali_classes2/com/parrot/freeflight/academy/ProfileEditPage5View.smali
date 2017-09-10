.class public Lcom/parrot/freeflight/academy/ProfileEditPage5View;
.super Landroid/widget/FrameLayout;
.source "ProfileEditPage5View.java"

# interfaces
.implements Lcom/parrot/freeflight/academy/ProfileEditActivity$ProfileEditView;
.implements Lcom/parrot/freeflight/academy/ProfileEditActivity$ActivityResultListener;
.implements Lcom/parrot/freeflight3/ARFacebookShareManager$ARFacebookShareManagerListener;


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "ViewConstructor"
    }
.end annotation


# static fields
.field private static final GOOGLE_ACCOUNT_TYPE:Ljava/lang/String; = "com.google"

.field private static final REQUEST_CODE_PICK_ACCOUNT:I = 0xde


# instance fields
.field private final mAcademyManager:Lcom/parrot/freeflight/core/academy/AcademyManager;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private final mActivity:Lcom/parrot/freeflight/academy/ProfileEditActivity;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private final mFacebookConnect:Landroid/widget/Button;

.field private final mGoogleConnect:Landroid/widget/Button;


# direct methods
.method public constructor <init>(Lcom/parrot/freeflight/academy/ProfileEditActivity;)V
    .locals 2
    .param p1, "activity"    # Lcom/parrot/freeflight/academy/ProfileEditActivity;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 42
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 43
    iput-object p1, p0, Lcom/parrot/freeflight/academy/ProfileEditPage5View;->mActivity:Lcom/parrot/freeflight/academy/ProfileEditActivity;

    .line 45
    const v0, 0x7f04003b

    invoke-static {p1, v0, p0}, Lcom/parrot/freeflight/academy/ProfileEditPage5View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 47
    invoke-static {p1, p0}, Lcom/parrot/freeflight/util/ui/FontUtils;->applyFont(Landroid/content/Context;Landroid/view/View;)V

    .line 49
    const v0, 0x7f0f0174

    invoke-virtual {p0, v0}, Lcom/parrot/freeflight/academy/ProfileEditPage5View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/parrot/freeflight/academy/ProfileEditPage5View;->mFacebookConnect:Landroid/widget/Button;

    .line 50
    const v0, 0x7f0f0175

    invoke-virtual {p0, v0}, Lcom/parrot/freeflight/academy/ProfileEditPage5View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/parrot/freeflight/academy/ProfileEditPage5View;->mGoogleConnect:Landroid/widget/Button;

    .line 52
    iget-object v0, p0, Lcom/parrot/freeflight/academy/ProfileEditPage5View;->mFacebookConnect:Landroid/widget/Button;

    new-instance v1, Lcom/parrot/freeflight/academy/ProfileEditPage5View$1;

    invoke-direct {v1, p0}, Lcom/parrot/freeflight/academy/ProfileEditPage5View$1;-><init>(Lcom/parrot/freeflight/academy/ProfileEditPage5View;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 58
    iget-object v0, p0, Lcom/parrot/freeflight/academy/ProfileEditPage5View;->mGoogleConnect:Landroid/widget/Button;

    new-instance v1, Lcom/parrot/freeflight/academy/ProfileEditPage5View$2;

    invoke-direct {v1, p0}, Lcom/parrot/freeflight/academy/ProfileEditPage5View$2;-><init>(Lcom/parrot/freeflight/academy/ProfileEditPage5View;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 65
    invoke-static {}, Lcom/parrot/freeflight/core/CoreManager;->getInstance()Lcom/parrot/freeflight/core/CoreManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/parrot/freeflight/core/CoreManager;->getAcademyManager()Lcom/parrot/freeflight/core/academy/AcademyManager;

    move-result-object v0

    iput-object v0, p0, Lcom/parrot/freeflight/academy/ProfileEditPage5View;->mAcademyManager:Lcom/parrot/freeflight/core/academy/AcademyManager;

    .line 66
    iget-object v0, p0, Lcom/parrot/freeflight/academy/ProfileEditPage5View;->mAcademyManager:Lcom/parrot/freeflight/core/academy/AcademyManager;

    invoke-virtual {v0, p0}, Lcom/parrot/freeflight/core/academy/AcademyManager;->setFacebookManagerListener(Lcom/parrot/freeflight3/ARFacebookShareManager$ARFacebookShareManagerListener;)V

    .line 67
    return-void
.end method

.method static synthetic access$000(Lcom/parrot/freeflight/academy/ProfileEditPage5View;)V
    .locals 0
    .param p0, "x0"    # Lcom/parrot/freeflight/academy/ProfileEditPage5View;

    .prologue
    .line 28
    invoke-direct {p0}, Lcom/parrot/freeflight/academy/ProfileEditPage5View;->onFacebookClick()V

    return-void
.end method

.method private accountHasBeenSet(Ljava/lang/String;I)V
    .locals 2
    .param p1, "accountName"    # Ljava/lang/String;
    .param p2, "socialNetwork"    # I

    .prologue
    const/4 v1, 0x1

    .line 161
    iget-object v0, p0, Lcom/parrot/freeflight/academy/ProfileEditPage5View;->mActivity:Lcom/parrot/freeflight/academy/ProfileEditActivity;

    invoke-static {v0, p1, p2}, Lcom/parrot/freeflight3/ARSocialNetworksUtils;->storeAccountName(Landroid/content/Context;Ljava/lang/String;I)V

    .line 162
    packed-switch p2, :pswitch_data_0

    .line 173
    :goto_0
    return-void

    .line 165
    :pswitch_0
    iget-object v0, p0, Lcom/parrot/freeflight/academy/ProfileEditPage5View;->mGoogleConnect:Landroid/widget/Button;

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 166
    iget-object v0, p0, Lcom/parrot/freeflight/academy/ProfileEditPage5View;->mGoogleConnect:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setSelected(Z)V

    goto :goto_0

    .line 169
    :pswitch_1
    iget-object v0, p0, Lcom/parrot/freeflight/academy/ProfileEditPage5View;->mFacebookConnect:Landroid/widget/Button;

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 170
    iget-object v0, p0, Lcom/parrot/freeflight/academy/ProfileEditPage5View;->mFacebookConnect:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setSelected(Z)V

    goto :goto_0

    .line 162
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private letUserChooseAccount()V
    .locals 9

    .prologue
    const/4 v3, 0x0

    const/4 v0, 0x0

    .line 176
    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/String;

    const-string v1, "com.google"

    aput-object v1, v2, v3

    .local v2, "accountTypes":[Ljava/lang/String;
    move-object v1, v0

    move-object v4, v0

    move-object v5, v0

    move-object v6, v0

    move-object v7, v0

    .line 177
    invoke-static/range {v0 .. v7}, Lcom/google/android/gms/common/AccountPicker;->newChooseAccountIntent(Landroid/accounts/Account;Ljava/util/ArrayList;[Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;[Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    move-result-object v8

    .line 178
    .local v8, "intent":Landroid/content/Intent;
    iget-object v0, p0, Lcom/parrot/freeflight/academy/ProfileEditPage5View;->mActivity:Lcom/parrot/freeflight/academy/ProfileEditActivity;

    const/16 v1, 0xde

    invoke-virtual {v0, v8, v1, p0}, Lcom/parrot/freeflight/academy/ProfileEditActivity;->startActivityForResult(Landroid/content/Intent;ILcom/parrot/freeflight/academy/ProfileEditActivity$ActivityResultListener;)V

    .line 179
    return-void
.end method

.method private onFacebookClick()V
    .locals 4

    .prologue
    const/4 v2, 0x2

    .line 130
    iget-object v1, p0, Lcom/parrot/freeflight/academy/ProfileEditPage5View;->mFacebookConnect:Landroid/widget/Button;

    invoke-virtual {v1}, Landroid/widget/Button;->isSelected()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 131
    iget-object v1, p0, Lcom/parrot/freeflight/academy/ProfileEditPage5View;->mActivity:Lcom/parrot/freeflight/academy/ProfileEditActivity;

    invoke-static {v1, v2}, Lcom/parrot/freeflight3/ARSocialNetworksUtils;->forgetLogin(Landroid/app/Activity;I)V

    .line 132
    iget-object v1, p0, Lcom/parrot/freeflight/academy/ProfileEditPage5View;->mFacebookConnect:Landroid/widget/Button;

    iget-object v2, p0, Lcom/parrot/freeflight/academy/ProfileEditPage5View;->mActivity:Lcom/parrot/freeflight/academy/ProfileEditActivity;

    const v3, 0x7f080483

    invoke-virtual {v2, v3}, Lcom/parrot/freeflight/academy/ProfileEditActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 133
    iget-object v1, p0, Lcom/parrot/freeflight/academy/ProfileEditPage5View;->mFacebookConnect:Landroid/widget/Button;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setSelected(Z)V

    .line 143
    :goto_0
    return-void

    .line 135
    :cond_0
    invoke-static {}, Lcom/parrot/freeflight/MainApplication;->getAppContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v2}, Lcom/parrot/freeflight3/ARSocialNetworksUtils;->getAccountName(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v0

    .line 136
    .local v0, "savedFacebookLogin":Ljava/lang/String;
    if-eqz v0, :cond_1

    .line 137
    iget-object v1, p0, Lcom/parrot/freeflight/academy/ProfileEditPage5View;->mFacebookConnect:Landroid/widget/Button;

    invoke-virtual {v1, v0}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 138
    iget-object v1, p0, Lcom/parrot/freeflight/academy/ProfileEditPage5View;->mFacebookConnect:Landroid/widget/Button;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setSelected(Z)V

    goto :goto_0

    .line 140
    :cond_1
    iget-object v1, p0, Lcom/parrot/freeflight/academy/ProfileEditPage5View;->mAcademyManager:Lcom/parrot/freeflight/core/academy/AcademyManager;

    iget-object v2, p0, Lcom/parrot/freeflight/academy/ProfileEditPage5View;->mActivity:Lcom/parrot/freeflight/academy/ProfileEditActivity;

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/parrot/freeflight/core/academy/AcademyManager;->signInToFacebook(Landroid/app/Activity;Landroid/support/v4/app/Fragment;)Z

    goto :goto_0
.end method


# virtual methods
.method public applyUiTheme(Lcom/parrot/freeflight/piloting/ui/util/ProductColor;)V
    .locals 1
    .param p1, "productColor"    # Lcom/parrot/freeflight/piloting/ui/util/ProductColor;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 215
    iget-object v0, p0, Lcom/parrot/freeflight/academy/ProfileEditPage5View;->mFacebookConnect:Landroid/widget/Button;

    invoke-virtual {p1, v0}, Lcom/parrot/freeflight/piloting/ui/util/ProductColor;->apply(Landroid/widget/Button;)V

    .line 216
    iget-object v0, p0, Lcom/parrot/freeflight/academy/ProfileEditPage5View;->mGoogleConnect:Landroid/widget/Button;

    invoke-virtual {p1, v0}, Lcom/parrot/freeflight/piloting/ui/util/ProductColor;->apply(Landroid/widget/Button;)V

    .line 217
    return-void
.end method

.method public destroy()V
    .locals 2

    .prologue
    .line 110
    iget-object v0, p0, Lcom/parrot/freeflight/academy/ProfileEditPage5View;->mAcademyManager:Lcom/parrot/freeflight/core/academy/AcademyManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/parrot/freeflight/core/academy/AcademyManager;->setFacebookManagerListener(Lcom/parrot/freeflight3/ARFacebookShareManager$ARFacebookShareManagerListener;)V

    .line 111
    return-void
.end method

.method public facebookShareManagerAccountNameReceived(Lcom/parrot/freeflight3/ARFacebookShareManager;Ljava/lang/String;)V
    .locals 1
    .param p1, "facebookShareManager"    # Lcom/parrot/freeflight3/ARFacebookShareManager;
    .param p2, "accountName"    # Ljava/lang/String;

    .prologue
    .line 193
    const/4 v0, 0x2

    invoke-direct {p0, p2, v0}, Lcom/parrot/freeflight/academy/ProfileEditPage5View;->accountHasBeenSet(Ljava/lang/String;I)V

    .line 194
    return-void
.end method

.method public facebookShareManagerIsSignedIn(Lcom/parrot/freeflight3/ARFacebookShareManager;)V
    .locals 0
    .param p1, "facebookShareManager"    # Lcom/parrot/freeflight3/ARFacebookShareManager;

    .prologue
    .line 184
    return-void
.end method

.method public facebookShareManagerPermissionNotGranted(Lcom/parrot/freeflight3/ARFacebookShareManager;)V
    .locals 0
    .param p1, "facebookShareManager"    # Lcom/parrot/freeflight3/ARFacebookShareManager;

    .prologue
    .line 198
    return-void
.end method

.method public facebookShareManagerSignInFailed(Lcom/parrot/freeflight3/ARFacebookShareManager;Ljava/lang/String;)V
    .locals 0
    .param p1, "facebookShareManager"    # Lcom/parrot/freeflight3/ARFacebookShareManager;
    .param p2, "error"    # Ljava/lang/String;

    .prologue
    .line 189
    return-void
.end method

.method public facebookShareManagerUploadingEnded(Lcom/parrot/freeflight3/ARFacebookShareManager;)V
    .locals 0
    .param p1, "facebookShareManager"    # Lcom/parrot/freeflight3/ARFacebookShareManager;

    .prologue
    .line 206
    return-void
.end method

.method public facebookShareManagerUploadingFailed(Lcom/parrot/freeflight3/ARFacebookShareManager;Ljava/lang/String;)V
    .locals 0
    .param p1, "facebookShareManager"    # Lcom/parrot/freeflight3/ARFacebookShareManager;
    .param p2, "error"    # Ljava/lang/String;

    .prologue
    .line 210
    return-void
.end method

.method public facebookShareManagerUploadingStarted(Lcom/parrot/freeflight3/ARFacebookShareManager;)V
    .locals 0
    .param p1, "facebookShareManager"    # Lcom/parrot/freeflight3/ARFacebookShareManager;

    .prologue
    .line 202
    return-void
.end method

.method public notifyChanged(Lcom/parrot/freeflight/academy/ProfileEditController$State;)V
    .locals 0
    .param p1, "state"    # Lcom/parrot/freeflight/academy/ProfileEditController$State;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 106
    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 2
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 115
    packed-switch p1, :pswitch_data_0

    .line 127
    :cond_0
    :goto_0
    return-void

    .line 117
    :pswitch_0
    const/4 v1, -0x1

    if-ne p2, v1, :cond_0

    if-eqz p3, :cond_0

    invoke-virtual {p3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 118
    const-string v1, "authAccount"

    invoke-virtual {p3, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 119
    .local v0, "accountName":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 120
    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/parrot/freeflight/academy/ProfileEditPage5View;->accountHasBeenSet(Ljava/lang/String;I)V

    goto :goto_0

    .line 115
    :pswitch_data_0
    .packed-switch 0xde
        :pswitch_0
    .end packed-switch
.end method

.method public onGoogleClick()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 146
    iget-object v1, p0, Lcom/parrot/freeflight/academy/ProfileEditPage5View;->mGoogleConnect:Landroid/widget/Button;

    invoke-virtual {v1}, Landroid/widget/Button;->isSelected()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 147
    iget-object v1, p0, Lcom/parrot/freeflight/academy/ProfileEditPage5View;->mGoogleConnect:Landroid/widget/Button;

    iget-object v2, p0, Lcom/parrot/freeflight/academy/ProfileEditPage5View;->mActivity:Lcom/parrot/freeflight/academy/ProfileEditActivity;

    const v3, 0x7f080483

    invoke-virtual {v2, v3}, Lcom/parrot/freeflight/academy/ProfileEditActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 148
    iget-object v1, p0, Lcom/parrot/freeflight/academy/ProfileEditPage5View;->mGoogleConnect:Landroid/widget/Button;

    invoke-virtual {v1, v4}, Landroid/widget/Button;->setSelected(Z)V

    .line 158
    :goto_0
    return-void

    .line 150
    :cond_0
    invoke-static {}, Lcom/parrot/freeflight/MainApplication;->getAppContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v4}, Lcom/parrot/freeflight3/ARSocialNetworksUtils;->getAccountName(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v0

    .line 151
    .local v0, "savedGoogleLogin":Ljava/lang/String;
    if-eqz v0, :cond_1

    .line 152
    iget-object v1, p0, Lcom/parrot/freeflight/academy/ProfileEditPage5View;->mGoogleConnect:Landroid/widget/Button;

    invoke-virtual {v1, v0}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 153
    iget-object v1, p0, Lcom/parrot/freeflight/academy/ProfileEditPage5View;->mGoogleConnect:Landroid/widget/Button;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setSelected(Z)V

    goto :goto_0

    .line 155
    :cond_1
    invoke-direct {p0}, Lcom/parrot/freeflight/academy/ProfileEditPage5View;->letUserChooseAccount()V

    goto :goto_0
.end method

.method public setData(Lcom/parrot/arsdk/aracademy/ARAcademyProfile;)V
    .locals 4
    .param p1, "profile"    # Lcom/parrot/arsdk/aracademy/ARAcademyProfile;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    const/4 v3, 0x1

    .line 71
    if-eqz p1, :cond_1

    iget-object v2, p0, Lcom/parrot/freeflight/academy/ProfileEditPage5View;->mGoogleConnect:Landroid/widget/Button;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/parrot/freeflight/academy/ProfileEditPage5View;->mFacebookConnect:Landroid/widget/Button;

    if-eqz v2, :cond_1

    .line 72
    invoke-virtual {p1}, Lcom/parrot/arsdk/aracademy/ARAcademyProfile;->getYoutube()Ljava/lang/String;

    move-result-object v1

    .line 73
    .local v1, "gPlusAccountName":Ljava/lang/String;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    .line 74
    iget-object v2, p0, Lcom/parrot/freeflight/academy/ProfileEditPage5View;->mGoogleConnect:Landroid/widget/Button;

    invoke-virtual {v2, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 75
    iget-object v2, p0, Lcom/parrot/freeflight/academy/ProfileEditPage5View;->mGoogleConnect:Landroid/widget/Button;

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setSelected(Z)V

    .line 78
    :cond_0
    invoke-virtual {p1}, Lcom/parrot/arsdk/aracademy/ARAcademyProfile;->getFacebook()Ljava/lang/String;

    move-result-object v0

    .line 79
    .local v0, "facebookAccount":Ljava/lang/String;
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1

    .line 80
    iget-object v2, p0, Lcom/parrot/freeflight/academy/ProfileEditPage5View;->mFacebookConnect:Landroid/widget/Button;

    invoke-virtual {v2, v0}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 81
    iget-object v2, p0, Lcom/parrot/freeflight/academy/ProfileEditPage5View;->mFacebookConnect:Landroid/widget/Button;

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setSelected(Z)V

    .line 84
    .end local v0    # "facebookAccount":Ljava/lang/String;
    .end local v1    # "gPlusAccountName":Ljava/lang/String;
    :cond_1
    return-void
.end method

.method public updateEditedProfile(Lcom/parrot/arsdk/aracademy/ARAcademyProfile;)V
    .locals 1
    .param p1, "profile"    # Lcom/parrot/arsdk/aracademy/ARAcademyProfile;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 88
    if-eqz p1, :cond_0

    .line 89
    iget-object v0, p0, Lcom/parrot/freeflight/academy/ProfileEditPage5View;->mGoogleConnect:Landroid/widget/Button;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/parrot/freeflight/academy/ProfileEditPage5View;->mGoogleConnect:Landroid/widget/Button;

    invoke-virtual {v0}, Landroid/widget/Button;->isSelected()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 90
    iget-object v0, p0, Lcom/parrot/freeflight/academy/ProfileEditPage5View;->mGoogleConnect:Landroid/widget/Button;

    invoke-virtual {v0}, Landroid/widget/Button;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/parrot/arsdk/aracademy/ARAcademyProfile;->setYoutube(Ljava/lang/String;)V

    .line 91
    iget-object v0, p0, Lcom/parrot/freeflight/academy/ProfileEditPage5View;->mGoogleConnect:Landroid/widget/Button;

    invoke-virtual {v0}, Landroid/widget/Button;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/parrot/arsdk/aracademy/ARAcademyProfile;->setGooglePlus(Ljava/lang/String;)V

    .line 96
    :goto_0
    iget-object v0, p0, Lcom/parrot/freeflight/academy/ProfileEditPage5View;->mFacebookConnect:Landroid/widget/Button;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/parrot/freeflight/academy/ProfileEditPage5View;->mFacebookConnect:Landroid/widget/Button;

    invoke-virtual {v0}, Landroid/widget/Button;->isSelected()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 97
    iget-object v0, p0, Lcom/parrot/freeflight/academy/ProfileEditPage5View;->mFacebookConnect:Landroid/widget/Button;

    invoke-virtual {v0}, Landroid/widget/Button;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/parrot/arsdk/aracademy/ARAcademyProfile;->setFacebook(Ljava/lang/String;)V

    .line 102
    :cond_0
    :goto_1
    return-void

    .line 93
    :cond_1
    const-string v0, ""

    invoke-virtual {p1, v0}, Lcom/parrot/arsdk/aracademy/ARAcademyProfile;->setYoutube(Ljava/lang/String;)V

    .line 94
    const-string v0, ""

    invoke-virtual {p1, v0}, Lcom/parrot/arsdk/aracademy/ARAcademyProfile;->setGooglePlus(Ljava/lang/String;)V

    goto :goto_0

    .line 99
    :cond_2
    const-string v0, ""

    invoke-virtual {p1, v0}, Lcom/parrot/arsdk/aracademy/ARAcademyProfile;->setFacebook(Ljava/lang/String;)V

    goto :goto_1
.end method
