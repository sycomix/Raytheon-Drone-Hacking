.class Lcom/parrot/freeflight/view/UnclickableEditText$1;
.super Ljava/lang/Object;
.source "UnclickableEditText.java"

# interfaces
.implements Landroid/widget/TextView$OnEditorActionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/parrot/freeflight/view/UnclickableEditText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/parrot/freeflight/view/UnclickableEditText;


# direct methods
.method constructor <init>(Lcom/parrot/freeflight/view/UnclickableEditText;)V
    .locals 0
    .param p1, "this$0"    # Lcom/parrot/freeflight/view/UnclickableEditText;

    .prologue
    .line 58
    iput-object p1, p0, Lcom/parrot/freeflight/view/UnclickableEditText$1;->this$0:Lcom/parrot/freeflight/view/UnclickableEditText;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onEditorAction(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 4
    .param p1, "v"    # Landroid/widget/TextView;
    .param p2, "actionId"    # I
    .param p3, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v3, 0x1

    .line 61
    const/4 v0, 0x0

    .line 62
    .local v0, "stopEdition":Z
    const/4 v1, 0x6

    if-eq p2, v1, :cond_0

    if-eqz p3, :cond_4

    .line 63
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v1

    const/16 v2, 0x42

    if-eq v1, v2, :cond_0

    .line 64
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v1

    const/16 v2, 0x17

    if-eq v1, v2, :cond_0

    .line 65
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v1

    const/16 v2, 0x60

    if-ne v1, v2, :cond_4

    .line 66
    :cond_0
    iget-object v1, p0, Lcom/parrot/freeflight/view/UnclickableEditText$1;->this$0:Lcom/parrot/freeflight/view/UnclickableEditText;

    invoke-static {v1}, Lcom/parrot/freeflight/view/UnclickableEditText;->access$000(Lcom/parrot/freeflight/view/UnclickableEditText;)Lcom/parrot/freeflight/view/UnclickableEditText$OnActionListener;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 67
    iget-object v1, p0, Lcom/parrot/freeflight/view/UnclickableEditText$1;->this$0:Lcom/parrot/freeflight/view/UnclickableEditText;

    invoke-static {v1}, Lcom/parrot/freeflight/view/UnclickableEditText;->access$000(Lcom/parrot/freeflight/view/UnclickableEditText;)Lcom/parrot/freeflight/view/UnclickableEditText$OnActionListener;

    move-result-object v1

    invoke-interface {v1, v3}, Lcom/parrot/freeflight/view/UnclickableEditText$OnActionListener;->onAction(I)V

    .line 69
    :cond_1
    const/4 v0, 0x1

    .line 76
    :cond_2
    :goto_0
    if-eqz v0, :cond_3

    .line 77
    iget-object v1, p0, Lcom/parrot/freeflight/view/UnclickableEditText$1;->this$0:Lcom/parrot/freeflight/view/UnclickableEditText;

    invoke-static {v1}, Lcom/parrot/freeflight/view/UnclickableEditText;->access$100(Lcom/parrot/freeflight/view/UnclickableEditText;)V

    .line 79
    :cond_3
    return v3

    .line 70
    :cond_4
    if-eqz p3, :cond_2

    invoke-virtual {p3}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v1

    const/4 v2, 0x4

    if-ne v1, v2, :cond_2

    .line 71
    iget-object v1, p0, Lcom/parrot/freeflight/view/UnclickableEditText$1;->this$0:Lcom/parrot/freeflight/view/UnclickableEditText;

    invoke-static {v1}, Lcom/parrot/freeflight/view/UnclickableEditText;->access$000(Lcom/parrot/freeflight/view/UnclickableEditText;)Lcom/parrot/freeflight/view/UnclickableEditText$OnActionListener;

    move-result-object v1

    if-eqz v1, :cond_5

    .line 72
    iget-object v1, p0, Lcom/parrot/freeflight/view/UnclickableEditText$1;->this$0:Lcom/parrot/freeflight/view/UnclickableEditText;

    invoke-static {v1}, Lcom/parrot/freeflight/view/UnclickableEditText;->access$000(Lcom/parrot/freeflight/view/UnclickableEditText;)Lcom/parrot/freeflight/view/UnclickableEditText$OnActionListener;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Lcom/parrot/freeflight/view/UnclickableEditText$OnActionListener;->onAction(I)V

    .line 74
    :cond_5
    const/4 v0, 0x1

    goto :goto_0
.end method
