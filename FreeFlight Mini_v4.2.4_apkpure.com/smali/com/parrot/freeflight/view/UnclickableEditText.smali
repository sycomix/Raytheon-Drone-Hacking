.class public Lcom/parrot/freeflight/view/UnclickableEditText;
.super Landroid/widget/EditText;
.source "UnclickableEditText.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/parrot/freeflight/view/UnclickableEditText$OnActionListener;,
        Lcom/parrot/freeflight/view/UnclickableEditText$Action;
    }
.end annotation


# static fields
.field public static final ACTION_CANCEL:I = 0x0

.field public static final ACTION_DONE:I = 0x1


# instance fields
.field private mEditing:Z

.field private final mInputMethodManager:Landroid/view/inputmethod/InputMethodManager;

.field private mOnActionListener:Lcom/parrot/freeflight/view/UnclickableEditText$OnActionListener;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 43
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/parrot/freeflight/view/UnclickableEditText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 44
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 47
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/parrot/freeflight/view/UnclickableEditText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 48
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    const/4 v1, 0x0

    .line 51
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/EditText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 52
    const-string v0, "input_method"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    iput-object v0, p0, Lcom/parrot/freeflight/view/UnclickableEditText;->mInputMethodManager:Landroid/view/inputmethod/InputMethodManager;

    .line 53
    invoke-virtual {p0, v1}, Lcom/parrot/freeflight/view/UnclickableEditText;->setCursorVisible(Z)V

    .line 54
    invoke-virtual {p0, v1}, Lcom/parrot/freeflight/view/UnclickableEditText;->setClickable(Z)V

    .line 55
    invoke-virtual {p0, v1}, Lcom/parrot/freeflight/view/UnclickableEditText;->setFocusable(Z)V

    .line 56
    invoke-virtual {p0, v1}, Lcom/parrot/freeflight/view/UnclickableEditText;->setLongClickable(Z)V

    .line 58
    new-instance v0, Lcom/parrot/freeflight/view/UnclickableEditText$1;

    invoke-direct {v0, p0}, Lcom/parrot/freeflight/view/UnclickableEditText$1;-><init>(Lcom/parrot/freeflight/view/UnclickableEditText;)V

    invoke-virtual {p0, v0}, Lcom/parrot/freeflight/view/UnclickableEditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 82
    return-void
.end method

.method static synthetic access$000(Lcom/parrot/freeflight/view/UnclickableEditText;)Lcom/parrot/freeflight/view/UnclickableEditText$OnActionListener;
    .locals 1
    .param p0, "x0"    # Lcom/parrot/freeflight/view/UnclickableEditText;

    .prologue
    .line 21
    iget-object v0, p0, Lcom/parrot/freeflight/view/UnclickableEditText;->mOnActionListener:Lcom/parrot/freeflight/view/UnclickableEditText$OnActionListener;

    return-object v0
.end method

.method static synthetic access$100(Lcom/parrot/freeflight/view/UnclickableEditText;)V
    .locals 0
    .param p0, "x0"    # Lcom/parrot/freeflight/view/UnclickableEditText;

    .prologue
    .line 21
    invoke-direct {p0}, Lcom/parrot/freeflight/view/UnclickableEditText;->stopEdition()V

    return-void
.end method

.method private stopEdition()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 109
    iput-boolean v2, p0, Lcom/parrot/freeflight/view/UnclickableEditText;->mEditing:Z

    .line 110
    iget-object v0, p0, Lcom/parrot/freeflight/view/UnclickableEditText;->mInputMethodManager:Landroid/view/inputmethod/InputMethodManager;

    invoke-virtual {p0}, Lcom/parrot/freeflight/view/UnclickableEditText;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 111
    invoke-virtual {p0, v2}, Lcom/parrot/freeflight/view/UnclickableEditText;->setFocusable(Z)V

    .line 112
    invoke-virtual {p0, v2}, Lcom/parrot/freeflight/view/UnclickableEditText;->setCursorVisible(Z)V

    .line 113
    return-void
.end method


# virtual methods
.method public cancelEdition()V
    .locals 2

    .prologue
    .line 116
    iget-object v0, p0, Lcom/parrot/freeflight/view/UnclickableEditText;->mOnActionListener:Lcom/parrot/freeflight/view/UnclickableEditText$OnActionListener;

    if-eqz v0, :cond_0

    .line 117
    iget-object v0, p0, Lcom/parrot/freeflight/view/UnclickableEditText;->mOnActionListener:Lcom/parrot/freeflight/view/UnclickableEditText$OnActionListener;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/parrot/freeflight/view/UnclickableEditText$OnActionListener;->onAction(I)V

    .line 119
    :cond_0
    invoke-direct {p0}, Lcom/parrot/freeflight/view/UnclickableEditText;->stopEdition()V

    .line 120
    return-void
.end method

.method public onKeyPreIme(ILandroid/view/KeyEvent;)Z
    .locals 3
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v0, 0x0

    .line 90
    const/4 v1, 0x4

    if-ne p1, v1, :cond_1

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getAction()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    .line 91
    iget-object v1, p0, Lcom/parrot/freeflight/view/UnclickableEditText;->mOnActionListener:Lcom/parrot/freeflight/view/UnclickableEditText$OnActionListener;

    if-eqz v1, :cond_0

    .line 92
    iget-object v1, p0, Lcom/parrot/freeflight/view/UnclickableEditText;->mOnActionListener:Lcom/parrot/freeflight/view/UnclickableEditText$OnActionListener;

    invoke-interface {v1, v0}, Lcom/parrot/freeflight/view/UnclickableEditText$OnActionListener;->onAction(I)V

    .line 94
    :cond_0
    invoke-direct {p0}, Lcom/parrot/freeflight/view/UnclickableEditText;->stopEdition()V

    .line 97
    :goto_0
    return v0

    :cond_1
    invoke-super {p0, p1, p2}, Landroid/widget/EditText;->onKeyPreIme(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 130
    iget-boolean v0, p0, Lcom/parrot/freeflight/view/UnclickableEditText;->mEditing:Z

    if-eqz v0, :cond_0

    invoke-super {p0, p1}, Landroid/widget/EditText;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onWindowFocusChanged(Z)V
    .locals 0
    .param p1, "hasWindowFocus"    # Z

    .prologue
    .line 124
    invoke-super {p0, p1}, Landroid/widget/EditText;->onWindowFocusChanged(Z)V

    .line 125
    invoke-direct {p0}, Lcom/parrot/freeflight/view/UnclickableEditText;->stopEdition()V

    .line 126
    return-void
.end method

.method public setOnActionListener(Lcom/parrot/freeflight/view/UnclickableEditText$OnActionListener;)V
    .locals 0
    .param p1, "l"    # Lcom/parrot/freeflight/view/UnclickableEditText$OnActionListener;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 85
    iput-object p1, p0, Lcom/parrot/freeflight/view/UnclickableEditText;->mOnActionListener:Lcom/parrot/freeflight/view/UnclickableEditText$OnActionListener;

    .line 86
    return-void
.end method

.method public startEdition()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 101
    invoke-virtual {p0, v2}, Lcom/parrot/freeflight/view/UnclickableEditText;->setFocusableInTouchMode(Z)V

    .line 102
    invoke-virtual {p0, v2}, Lcom/parrot/freeflight/view/UnclickableEditText;->setCursorVisible(Z)V

    .line 103
    invoke-virtual {p0}, Lcom/parrot/freeflight/view/UnclickableEditText;->requestFocus()Z

    .line 104
    iget-object v0, p0, Lcom/parrot/freeflight/view/UnclickableEditText;->mInputMethodManager:Landroid/view/inputmethod/InputMethodManager;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    .line 105
    iput-boolean v2, p0, Lcom/parrot/freeflight/view/UnclickableEditText;->mEditing:Z

    .line 106
    return-void
.end method
