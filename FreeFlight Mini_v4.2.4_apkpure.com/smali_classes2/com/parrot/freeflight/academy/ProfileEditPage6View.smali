.class public Lcom/parrot/freeflight/academy/ProfileEditPage6View;
.super Landroid/widget/FrameLayout;
.source "ProfileEditPage6View.java"

# interfaces
.implements Lcom/parrot/freeflight/academy/ProfileEditActivity$ProfileEditView;


# instance fields
.field private final mSharingPrivateRadioButton:Landroid/widget/RadioButton;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private final mSharingPublicRadioButton:Landroid/widget/RadioButton;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private final mSharingRadioGroup:Landroid/widget/RadioGroup;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 24
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 26
    const v0, 0x7f04003c

    invoke-static {p1, v0, p0}, Lcom/parrot/freeflight/academy/ProfileEditPage6View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 28
    invoke-static {p1, p0}, Lcom/parrot/freeflight/util/ui/FontUtils;->applyFont(Landroid/content/Context;Landroid/view/View;)V

    .line 30
    const v0, 0x7f0f0176

    invoke-virtual {p0, v0}, Lcom/parrot/freeflight/academy/ProfileEditPage6View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioGroup;

    iput-object v0, p0, Lcom/parrot/freeflight/academy/ProfileEditPage6View;->mSharingRadioGroup:Landroid/widget/RadioGroup;

    .line 31
    const v0, 0x7f0f0177

    invoke-virtual {p0, v0}, Lcom/parrot/freeflight/academy/ProfileEditPage6View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioButton;

    iput-object v0, p0, Lcom/parrot/freeflight/academy/ProfileEditPage6View;->mSharingPublicRadioButton:Landroid/widget/RadioButton;

    .line 32
    const v0, 0x7f0f0178

    invoke-virtual {p0, v0}, Lcom/parrot/freeflight/academy/ProfileEditPage6View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioButton;

    iput-object v0, p0, Lcom/parrot/freeflight/academy/ProfileEditPage6View;->mSharingPrivateRadioButton:Landroid/widget/RadioButton;

    .line 34
    iget-object v0, p0, Lcom/parrot/freeflight/academy/ProfileEditPage6View;->mSharingRadioGroup:Landroid/widget/RadioGroup;

    new-instance v1, Lcom/parrot/freeflight/academy/ProfileEditPage6View$1;

    invoke-direct {v1, p0}, Lcom/parrot/freeflight/academy/ProfileEditPage6View$1;-><init>(Lcom/parrot/freeflight/academy/ProfileEditPage6View;)V

    invoke-virtual {v0, v1}, Landroid/widget/RadioGroup;->setOnCheckedChangeListener(Landroid/widget/RadioGroup$OnCheckedChangeListener;)V

    .line 46
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
    .line 72
    iget-object v0, p0, Lcom/parrot/freeflight/academy/ProfileEditPage6View;->mSharingPrivateRadioButton:Landroid/widget/RadioButton;

    invoke-virtual {p1, v0}, Lcom/parrot/freeflight/piloting/ui/util/ProductColor;->apply(Landroid/widget/RadioButton;)V

    .line 73
    iget-object v0, p0, Lcom/parrot/freeflight/academy/ProfileEditPage6View;->mSharingPublicRadioButton:Landroid/widget/RadioButton;

    invoke-virtual {p1, v0}, Lcom/parrot/freeflight/piloting/ui/util/ProductColor;->apply(Landroid/widget/RadioButton;)V

    .line 74
    return-void
.end method

.method public destroy()V
    .locals 0

    .prologue
    .line 68
    return-void
.end method

.method public notifyChanged(Lcom/parrot/freeflight/academy/ProfileEditController$State;)V
    .locals 0
    .param p1, "state"    # Lcom/parrot/freeflight/academy/ProfileEditController$State;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 64
    return-void
.end method

.method public setData(Lcom/parrot/arsdk/aracademy/ARAcademyProfile;)V
    .locals 2
    .param p1, "profile"    # Lcom/parrot/arsdk/aracademy/ARAcademyProfile;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 50
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/parrot/freeflight/academy/ProfileEditPage6View;->mSharingRadioGroup:Landroid/widget/RadioGroup;

    if-eqz v0, :cond_0

    .line 51
    iget-object v1, p0, Lcom/parrot/freeflight/academy/ProfileEditPage6View;->mSharingRadioGroup:Landroid/widget/RadioGroup;

    invoke-virtual {p1}, Lcom/parrot/arsdk/aracademy/ARAcademyProfile;->getRunVisibility()Z

    move-result v0

    if-eqz v0, :cond_1

    const v0, 0x7f0f0177

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/RadioGroup;->check(I)V

    .line 53
    :cond_0
    return-void

    .line 51
    :cond_1
    const v0, 0x7f0f0178

    goto :goto_0
.end method

.method public updateEditedProfile(Lcom/parrot/arsdk/aracademy/ARAcademyProfile;)V
    .locals 2
    .param p1, "profile"    # Lcom/parrot/arsdk/aracademy/ARAcademyProfile;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 57
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/parrot/freeflight/academy/ProfileEditPage6View;->mSharingRadioGroup:Landroid/widget/RadioGroup;

    if-eqz v0, :cond_0

    .line 58
    iget-object v0, p0, Lcom/parrot/freeflight/academy/ProfileEditPage6View;->mSharingRadioGroup:Landroid/widget/RadioGroup;

    invoke-virtual {v0}, Landroid/widget/RadioGroup;->getCheckedRadioButtonId()I

    move-result v0

    const v1, 0x7f0f0177

    if-ne v0, v1, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p1, v0}, Lcom/parrot/arsdk/aracademy/ARAcademyProfile;->setRunVisibility(Z)V

    .line 60
    :cond_0
    return-void

    .line 58
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
