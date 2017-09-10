.class public Lcom/parrot/freeflight/academy/ProfileEditPage4View;
.super Landroid/widget/FrameLayout;
.source "ProfileEditPage4View.java"

# interfaces
.implements Lcom/parrot/freeflight/academy/ProfileEditActivity$ProfileEditView;


# instance fields
.field private final mPsn:Landroid/widget/EditText;

.field private final mSteam:Landroid/widget/EditText;

.field private final mXboxLive:Landroid/widget/EditText;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 21
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 23
    const v0, 0x7f04003a

    invoke-static {p1, v0, p0}, Lcom/parrot/freeflight/academy/ProfileEditPage4View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 25
    invoke-static {p1, p0}, Lcom/parrot/freeflight/util/ui/FontUtils;->applyFont(Landroid/content/Context;Landroid/view/View;)V

    .line 27
    const v0, 0x7f0f0171

    invoke-virtual {p0, v0}, Lcom/parrot/freeflight/academy/ProfileEditPage4View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/parrot/freeflight/academy/ProfileEditPage4View;->mPsn:Landroid/widget/EditText;

    .line 28
    const v0, 0x7f0f0172

    invoke-virtual {p0, v0}, Lcom/parrot/freeflight/academy/ProfileEditPage4View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/parrot/freeflight/academy/ProfileEditPage4View;->mSteam:Landroid/widget/EditText;

    .line 29
    const v0, 0x7f0f0173

    invoke-virtual {p0, v0}, Lcom/parrot/freeflight/academy/ProfileEditPage4View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/parrot/freeflight/academy/ProfileEditPage4View;->mXboxLive:Landroid/widget/EditText;

    .line 30
    return-void
.end method


# virtual methods
.method public applyUiTheme(Lcom/parrot/freeflight/piloting/ui/util/ProductColor;)V
    .locals 1
    .param p1, "productColor"    # Lcom/parrot/freeflight/piloting/ui/util/ProductColor;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 66
    iget-object v0, p0, Lcom/parrot/freeflight/academy/ProfileEditPage4View;->mPsn:Landroid/widget/EditText;

    invoke-virtual {p1, v0}, Lcom/parrot/freeflight/piloting/ui/util/ProductColor;->apply(Landroid/widget/EditText;)V

    .line 67
    iget-object v0, p0, Lcom/parrot/freeflight/academy/ProfileEditPage4View;->mSteam:Landroid/widget/EditText;

    invoke-virtual {p1, v0}, Lcom/parrot/freeflight/piloting/ui/util/ProductColor;->apply(Landroid/widget/EditText;)V

    .line 68
    iget-object v0, p0, Lcom/parrot/freeflight/academy/ProfileEditPage4View;->mXboxLive:Landroid/widget/EditText;

    invoke-virtual {p1, v0}, Lcom/parrot/freeflight/piloting/ui/util/ProductColor;->apply(Landroid/widget/EditText;)V

    .line 69
    return-void
.end method

.method public destroy()V
    .locals 0

    .prologue
    .line 62
    return-void
.end method

.method public notifyChanged(Lcom/parrot/freeflight/academy/ProfileEditController$State;)V
    .locals 0
    .param p1, "state"    # Lcom/parrot/freeflight/academy/ProfileEditController$State;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 58
    return-void
.end method

.method public setData(Lcom/parrot/arsdk/aracademy/ARAcademyProfile;)V
    .locals 2
    .param p1, "profile"    # Lcom/parrot/arsdk/aracademy/ARAcademyProfile;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 34
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/parrot/freeflight/academy/ProfileEditPage4View;->mPsn:Landroid/widget/EditText;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/parrot/freeflight/academy/ProfileEditPage4View;->mSteam:Landroid/widget/EditText;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/parrot/freeflight/academy/ProfileEditPage4View;->mXboxLive:Landroid/widget/EditText;

    if-eqz v0, :cond_0

    .line 35
    iget-object v0, p0, Lcom/parrot/freeflight/academy/ProfileEditPage4View;->mPsn:Landroid/widget/EditText;

    invoke-virtual {p1}, Lcom/parrot/arsdk/aracademy/ARAcademyProfile;->getPsn()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 36
    iget-object v0, p0, Lcom/parrot/freeflight/academy/ProfileEditPage4View;->mSteam:Landroid/widget/EditText;

    invoke-virtual {p1}, Lcom/parrot/arsdk/aracademy/ARAcademyProfile;->getSteam()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 37
    iget-object v0, p0, Lcom/parrot/freeflight/academy/ProfileEditPage4View;->mXboxLive:Landroid/widget/EditText;

    invoke-virtual {p1}, Lcom/parrot/arsdk/aracademy/ARAcademyProfile;->getXboxLive()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 39
    :cond_0
    return-void
.end method

.method public updateEditedProfile(Lcom/parrot/arsdk/aracademy/ARAcademyProfile;)V
    .locals 1
    .param p1, "profile"    # Lcom/parrot/arsdk/aracademy/ARAcademyProfile;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 43
    if-eqz p1, :cond_2

    .line 44
    iget-object v0, p0, Lcom/parrot/freeflight/academy/ProfileEditPage4View;->mPsn:Landroid/widget/EditText;

    if-eqz v0, :cond_0

    .line 45
    iget-object v0, p0, Lcom/parrot/freeflight/academy/ProfileEditPage4View;->mPsn:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/parrot/arsdk/aracademy/ARAcademyProfile;->setPsn(Ljava/lang/String;)V

    .line 47
    :cond_0
    iget-object v0, p0, Lcom/parrot/freeflight/academy/ProfileEditPage4View;->mSteam:Landroid/widget/EditText;

    if-eqz v0, :cond_1

    .line 48
    iget-object v0, p0, Lcom/parrot/freeflight/academy/ProfileEditPage4View;->mSteam:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/parrot/arsdk/aracademy/ARAcademyProfile;->setSteam(Ljava/lang/String;)V

    .line 50
    :cond_1
    iget-object v0, p0, Lcom/parrot/freeflight/academy/ProfileEditPage4View;->mXboxLive:Landroid/widget/EditText;

    if-eqz v0, :cond_2

    .line 51
    iget-object v0, p0, Lcom/parrot/freeflight/academy/ProfileEditPage4View;->mXboxLive:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/parrot/arsdk/aracademy/ARAcademyProfile;->setXboxLive(Ljava/lang/String;)V

    .line 54
    :cond_2
    return-void
.end method
