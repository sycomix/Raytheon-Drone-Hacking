.class public abstract Lcom/parrot/freeflight/piloting/ui/settings/SettingsView;
.super Landroid/widget/RelativeLayout;
.source "SettingsView.java"

# interfaces
.implements Lcom/parrot/freeflight/util/ui/ICircularRevealable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/parrot/freeflight/piloting/ui/settings/SettingsView$OnBackButtonClickListener;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcom/parrot/freeflight/core/model/Model;",
        "U:",
        "Lcom/parrot/freeflight/core/model/Model;",
        ">",
        "Landroid/widget/RelativeLayout;",
        "Lcom/parrot/freeflight/util/ui/ICircularRevealable;"
    }
.end annotation


# instance fields
.field private mClipped:Z

.field protected mOnBackButtonClickListener:Lcom/parrot/freeflight/piloting/ui/settings/SettingsView$OnBackButtonClickListener;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private final mPath:Landroid/graphics/Path;

.field protected mSelectedGamePad:Lcom/parrot/freeflight/gamepad/GamePad;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 31
    .local p0, "this":Lcom/parrot/freeflight/piloting/ui/settings/SettingsView;, "Lcom/parrot/freeflight/piloting/ui/settings/SettingsView<TT;TU;>;"
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/parrot/freeflight/piloting/ui/settings/SettingsView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 32
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 35
    .local p0, "this":Lcom/parrot/freeflight/piloting/ui/settings/SettingsView;, "Lcom/parrot/freeflight/piloting/ui/settings/SettingsView<TT;TU;>;"
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/parrot/freeflight/piloting/ui/settings/SettingsView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 36
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    .line 39
    .local p0, "this":Lcom/parrot/freeflight/piloting/ui/settings/SettingsView;, "Lcom/parrot/freeflight/piloting/ui/settings/SettingsView<TT;TU;>;"
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 84
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lcom/parrot/freeflight/piloting/ui/settings/SettingsView;->mPath:Landroid/graphics/Path;

    .line 40
    return-void
.end method


# virtual methods
.method public clipView(Z)V
    .locals 1
    .param p1, "clip"    # Z

    .prologue
    .line 95
    .local p0, "this":Lcom/parrot/freeflight/piloting/ui/settings/SettingsView;, "Lcom/parrot/freeflight/piloting/ui/settings/SettingsView<TT;TU;>;"
    iget-boolean v0, p0, Lcom/parrot/freeflight/piloting/ui/settings/SettingsView;->mClipped:Z

    if-eq v0, p1, :cond_0

    .line 96
    iput-boolean p1, p0, Lcom/parrot/freeflight/piloting/ui/settings/SettingsView;->mClipped:Z

    .line 97
    invoke-virtual {p0}, Lcom/parrot/freeflight/piloting/ui/settings/SettingsView;->invalidate()V

    .line 99
    :cond_0
    return-void
.end method

.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 1
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 103
    .local p0, "this":Lcom/parrot/freeflight/piloting/ui/settings/SettingsView;, "Lcom/parrot/freeflight/piloting/ui/settings/SettingsView<TT;TU;>;"
    iget-boolean v0, p0, Lcom/parrot/freeflight/piloting/ui/settings/SettingsView;->mClipped:Z

    if-eqz v0, :cond_0

    .line 104
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/settings/SettingsView;->mPath:Landroid/graphics/Path;

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->clipPath(Landroid/graphics/Path;)Z

    .line 106
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 107
    return-void
.end method

.method public getPath()Landroid/graphics/Path;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 90
    .local p0, "this":Lcom/parrot/freeflight/piloting/ui/settings/SettingsView;, "Lcom/parrot/freeflight/piloting/ui/settings/SettingsView<TT;TU;>;"
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/settings/SettingsView;->mPath:Landroid/graphics/Path;

    return-object v0
.end method

.method public hide()V
    .locals 1

    .prologue
    .line 52
    .local p0, "this":Lcom/parrot/freeflight/piloting/ui/settings/SettingsView;, "Lcom/parrot/freeflight/piloting/ui/settings/SettingsView<TT;TU;>;"
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/parrot/freeflight/piloting/ui/settings/SettingsView;->setVisibility(I)V

    .line 53
    return-void
.end method

.method public abstract initController(Lcom/parrot/freeflight/core/model/Model;Lcom/parrot/freeflight/piloting/model/LocalSettingsModel;Lcom/parrot/freeflight/core/model/Model;Lcom/parrot/freeflight/piloting/RelativePositionController;Lcom/parrot/freeflight/piloting/ui/util/ProductColor;)V
    .param p1    # Lcom/parrot/freeflight/core/model/Model;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/parrot/freeflight/piloting/model/LocalSettingsModel;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Lcom/parrot/freeflight/core/model/Model;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p4    # Lcom/parrot/freeflight/piloting/RelativePositionController;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p5    # Lcom/parrot/freeflight/piloting/ui/util/ProductColor;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Lcom/parrot/freeflight/piloting/model/LocalSettingsModel;",
            "TU;",
            "Lcom/parrot/freeflight/piloting/RelativePositionController;",
            "Lcom/parrot/freeflight/piloting/ui/util/ProductColor;",
            ")V"
        }
    .end annotation
.end method

.method public final onGamePadConnected(Lcom/parrot/freeflight/gamepad/GamePad;)V
    .locals 1
    .param p1, "gamePad"    # Lcom/parrot/freeflight/gamepad/GamePad;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 62
    .local p0, "this":Lcom/parrot/freeflight/piloting/ui/settings/SettingsView;, "Lcom/parrot/freeflight/piloting/ui/settings/SettingsView<TT;TU;>;"
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/settings/SettingsView;->mSelectedGamePad:Lcom/parrot/freeflight/gamepad/GamePad;

    if-eq v0, p1, :cond_0

    .line 63
    iput-object p1, p0, Lcom/parrot/freeflight/piloting/ui/settings/SettingsView;->mSelectedGamePad:Lcom/parrot/freeflight/gamepad/GamePad;

    .line 64
    invoke-virtual {p0}, Lcom/parrot/freeflight/piloting/ui/settings/SettingsView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 66
    invoke-virtual {p0}, Lcom/parrot/freeflight/piloting/ui/settings/SettingsView;->onGamePadStateChanged()V

    .line 69
    :cond_0
    return-void
.end method

.method protected onGamePadStateChanged()V
    .locals 0

    .prologue
    .line 73
    .local p0, "this":Lcom/parrot/freeflight/piloting/ui/settings/SettingsView;, "Lcom/parrot/freeflight/piloting/ui/settings/SettingsView<TT;TU;>;"
    return-void
.end method

.method public setOnBackButtonClickListener(Lcom/parrot/freeflight/piloting/ui/settings/SettingsView$OnBackButtonClickListener;)V
    .locals 0
    .param p1, "onBackButtonClickListener"    # Lcom/parrot/freeflight/piloting/ui/settings/SettingsView$OnBackButtonClickListener;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 43
    .local p0, "this":Lcom/parrot/freeflight/piloting/ui/settings/SettingsView;, "Lcom/parrot/freeflight/piloting/ui/settings/SettingsView<TT;TU;>;"
    iput-object p1, p0, Lcom/parrot/freeflight/piloting/ui/settings/SettingsView;->mOnBackButtonClickListener:Lcom/parrot/freeflight/piloting/ui/settings/SettingsView$OnBackButtonClickListener;

    .line 44
    return-void
.end method

.method public show(Lcom/parrot/freeflight/core/model/Model;Lcom/parrot/freeflight/piloting/model/LocalSettingsModel;Lcom/parrot/freeflight/core/model/Model;Lcom/parrot/freeflight/piloting/RelativePositionController;Lcom/parrot/freeflight/piloting/ui/util/ProductColor;)V
    .locals 1
    .param p1    # Lcom/parrot/freeflight/core/model/Model;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "localSettingsModel"    # Lcom/parrot/freeflight/piloting/model/LocalSettingsModel;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Lcom/parrot/freeflight/core/model/Model;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p4, "relativePositionController"    # Lcom/parrot/freeflight/piloting/RelativePositionController;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p5, "productColor"    # Lcom/parrot/freeflight/piloting/ui/util/ProductColor;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Lcom/parrot/freeflight/piloting/model/LocalSettingsModel;",
            "TU;",
            "Lcom/parrot/freeflight/piloting/RelativePositionController;",
            "Lcom/parrot/freeflight/piloting/ui/util/ProductColor;",
            ")V"
        }
    .end annotation

    .prologue
    .line 48
    .local p0, "this":Lcom/parrot/freeflight/piloting/ui/settings/SettingsView;, "Lcom/parrot/freeflight/piloting/ui/settings/SettingsView<TT;TU;>;"
    .local p1, "model":Lcom/parrot/freeflight/core/model/Model;, "TT;"
    .local p3, "remoteControllerModel":Lcom/parrot/freeflight/core/model/Model;, "TU;"
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/parrot/freeflight/piloting/ui/settings/SettingsView;->setVisibility(I)V

    .line 49
    return-void
.end method

.method public abstract update()V
.end method
