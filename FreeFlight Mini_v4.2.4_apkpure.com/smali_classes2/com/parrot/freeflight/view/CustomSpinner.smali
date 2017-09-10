.class public Lcom/parrot/freeflight/view/CustomSpinner;
.super Landroid/widget/Spinner;
.source "CustomSpinner.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/parrot/freeflight/view/CustomSpinner$OnSpinnerOpenStateChangedListener;
    }
.end annotation


# instance fields
.field private mListener:Lcom/parrot/freeflight/view/CustomSpinner$OnSpinnerOpenStateChangedListener;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private mOpened:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 31
    invoke-direct {p0, p1}, Landroid/widget/Spinner;-><init>(Landroid/content/Context;)V

    .line 12
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/parrot/freeflight/view/CustomSpinner;->mOpened:Z

    .line 32
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "mode"    # I

    .prologue
    .line 27
    invoke-direct {p0, p1, p2}, Landroid/widget/Spinner;-><init>(Landroid/content/Context;I)V

    .line 12
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/parrot/freeflight/view/CustomSpinner;->mOpened:Z

    .line 28
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 23
    invoke-direct {p0, p1, p2}, Landroid/widget/Spinner;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 12
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/parrot/freeflight/view/CustomSpinner;->mOpened:Z

    .line 24
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    .line 19
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/Spinner;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 12
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/parrot/freeflight/view/CustomSpinner;->mOpened:Z

    .line 20
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "mode"    # I

    .prologue
    .line 15
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/Spinner;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 12
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/parrot/freeflight/view/CustomSpinner;->mOpened:Z

    .line 16
    return-void
.end method


# virtual methods
.method public hasBeenOpened()Z
    .locals 1

    .prologue
    .line 63
    iget-boolean v0, p0, Lcom/parrot/freeflight/view/CustomSpinner;->mOpened:Z

    return v0
.end method

.method public onWindowFocusChanged(Z)V
    .locals 1
    .param p1, "hasWindowFocus"    # Z

    .prologue
    .line 68
    invoke-super {p0, p1}, Landroid/widget/Spinner;->onWindowFocusChanged(Z)V

    .line 69
    invoke-virtual {p0}, Lcom/parrot/freeflight/view/CustomSpinner;->hasBeenOpened()Z

    move-result v0

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    .line 70
    invoke-virtual {p0}, Lcom/parrot/freeflight/view/CustomSpinner;->performClosedEvent()V

    .line 72
    :cond_0
    return-void
.end method

.method public performClick()Z
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 36
    iput-boolean v1, p0, Lcom/parrot/freeflight/view/CustomSpinner;->mOpened:Z

    .line 37
    iget-object v0, p0, Lcom/parrot/freeflight/view/CustomSpinner;->mListener:Lcom/parrot/freeflight/view/CustomSpinner$OnSpinnerOpenStateChangedListener;

    if-eqz v0, :cond_0

    .line 38
    iget-object v0, p0, Lcom/parrot/freeflight/view/CustomSpinner;->mListener:Lcom/parrot/freeflight/view/CustomSpinner$OnSpinnerOpenStateChangedListener;

    invoke-interface {v0, p0, v1}, Lcom/parrot/freeflight/view/CustomSpinner$OnSpinnerOpenStateChangedListener;->onOpenStateChanged(Landroid/widget/Spinner;Z)V

    .line 40
    :cond_0
    invoke-super {p0}, Landroid/widget/Spinner;->performClick()Z

    move-result v0

    return v0
.end method

.method public performClosedEvent()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 51
    iput-boolean v1, p0, Lcom/parrot/freeflight/view/CustomSpinner;->mOpened:Z

    .line 52
    iget-object v0, p0, Lcom/parrot/freeflight/view/CustomSpinner;->mListener:Lcom/parrot/freeflight/view/CustomSpinner$OnSpinnerOpenStateChangedListener;

    if-eqz v0, :cond_0

    .line 53
    iget-object v0, p0, Lcom/parrot/freeflight/view/CustomSpinner;->mListener:Lcom/parrot/freeflight/view/CustomSpinner$OnSpinnerOpenStateChangedListener;

    invoke-interface {v0, p0, v1}, Lcom/parrot/freeflight/view/CustomSpinner$OnSpinnerOpenStateChangedListener;->onOpenStateChanged(Landroid/widget/Spinner;Z)V

    .line 55
    :cond_0
    return-void
.end method

.method public setSpinnerEventsListener(Lcom/parrot/freeflight/view/CustomSpinner$OnSpinnerOpenStateChangedListener;)V
    .locals 0
    .param p1, "onSpinnerEventsListener"    # Lcom/parrot/freeflight/view/CustomSpinner$OnSpinnerOpenStateChangedListener;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 44
    iput-object p1, p0, Lcom/parrot/freeflight/view/CustomSpinner;->mListener:Lcom/parrot/freeflight/view/CustomSpinner$OnSpinnerOpenStateChangedListener;

    .line 45
    return-void
.end method
