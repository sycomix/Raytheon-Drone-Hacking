.class public Lcom/parrot/freeflight/academy/ProfileEditPage7View;
.super Landroid/widget/FrameLayout;
.source "ProfileEditPage7View.java"

# interfaces
.implements Lcom/parrot/freeflight/academy/ProfileEditActivity$ProfileEditView;


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "ViewConstructor"
    }
.end annotation


# instance fields
.field private final mController:Lcom/parrot/freeflight/academy/ProfileEditController;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private final mDeleteButton:Landroid/widget/Button;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private final mDeleteProgress:Landroid/widget/ProgressBar;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/parrot/freeflight/academy/ProfileEditController;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "controller"    # Lcom/parrot/freeflight/academy/ProfileEditController;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 32
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 33
    iput-object p2, p0, Lcom/parrot/freeflight/academy/ProfileEditPage7View;->mController:Lcom/parrot/freeflight/academy/ProfileEditController;

    .line 35
    const v0, 0x7f04003d

    invoke-static {p1, v0, p0}, Lcom/parrot/freeflight/academy/ProfileEditPage7View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 37
    invoke-static {p1, p0}, Lcom/parrot/freeflight/util/ui/FontUtils;->applyFont(Landroid/content/Context;Landroid/view/View;)V

    .line 39
    const v0, 0x7f0f00e7

    invoke-virtual {p0, v0}, Lcom/parrot/freeflight/academy/ProfileEditPage7View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/parrot/freeflight/academy/ProfileEditPage7View;->mDeleteButton:Landroid/widget/Button;

    .line 40
    iget-object v0, p0, Lcom/parrot/freeflight/academy/ProfileEditPage7View;->mDeleteButton:Landroid/widget/Button;

    new-instance v1, Lcom/parrot/freeflight/academy/ProfileEditPage7View$1;

    invoke-direct {v1, p0}, Lcom/parrot/freeflight/academy/ProfileEditPage7View$1;-><init>(Lcom/parrot/freeflight/academy/ProfileEditPage7View;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 46
    const v0, 0x7f0f0179

    invoke-virtual {p0, v0}, Lcom/parrot/freeflight/academy/ProfileEditPage7View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcom/parrot/freeflight/academy/ProfileEditPage7View;->mDeleteProgress:Landroid/widget/ProgressBar;

    .line 47
    return-void
.end method

.method static synthetic access$000(Lcom/parrot/freeflight/academy/ProfileEditPage7View;)Lcom/parrot/freeflight/academy/ProfileEditController;
    .locals 1
    .param p0, "x0"    # Lcom/parrot/freeflight/academy/ProfileEditPage7View;

    .prologue
    .line 21
    iget-object v0, p0, Lcom/parrot/freeflight/academy/ProfileEditPage7View;->mController:Lcom/parrot/freeflight/academy/ProfileEditController;

    return-object v0
.end method


# virtual methods
.method public applyUiTheme(Lcom/parrot/freeflight/piloting/ui/util/ProductColor;)V
    .locals 1
    .param p1, "productColor"    # Lcom/parrot/freeflight/piloting/ui/util/ProductColor;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 69
    iget-object v0, p0, Lcom/parrot/freeflight/academy/ProfileEditPage7View;->mDeleteButton:Landroid/widget/Button;

    invoke-virtual {p1, v0}, Lcom/parrot/freeflight/piloting/ui/util/ProductColor;->apply(Landroid/widget/Button;)V

    .line 70
    return-void
.end method

.method public destroy()V
    .locals 0

    .prologue
    .line 65
    return-void
.end method

.method public notifyChanged(Lcom/parrot/freeflight/academy/ProfileEditController$State;)V
    .locals 4
    .param p1, "state"    # Lcom/parrot/freeflight/academy/ProfileEditController$State;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    const/16 v2, 0x8

    const/4 v1, 0x0

    .line 59
    iget-object v3, p0, Lcom/parrot/freeflight/academy/ProfileEditPage7View;->mDeleteButton:Landroid/widget/Button;

    sget-object v0, Lcom/parrot/freeflight/academy/ProfileEditController$State;->STATE_DEFAULT:Lcom/parrot/freeflight/academy/ProfileEditController$State;

    if-ne p1, v0, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {v3, v0}, Landroid/widget/Button;->setVisibility(I)V

    .line 60
    iget-object v0, p0, Lcom/parrot/freeflight/academy/ProfileEditPage7View;->mDeleteProgress:Landroid/widget/ProgressBar;

    sget-object v3, Lcom/parrot/freeflight/academy/ProfileEditController$State;->STATE_DELETING:Lcom/parrot/freeflight/academy/ProfileEditController$State;

    if-ne p1, v3, :cond_1

    :goto_1
    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 61
    return-void

    :cond_0
    move v0, v2

    .line 59
    goto :goto_0

    :cond_1
    move v1, v2

    .line 60
    goto :goto_1
.end method

.method public setData(Lcom/parrot/arsdk/aracademy/ARAcademyProfile;)V
    .locals 0
    .param p1, "profile"    # Lcom/parrot/arsdk/aracademy/ARAcademyProfile;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 51
    return-void
.end method

.method public updateEditedProfile(Lcom/parrot/arsdk/aracademy/ARAcademyProfile;)V
    .locals 0
    .param p1, "profile"    # Lcom/parrot/arsdk/aracademy/ARAcademyProfile;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 55
    return-void
.end method
