.class Lcom/parrot/freeflight/gamepad/EventSender$1;
.super Ljava/lang/Object;
.source "EventSender.java"

# interfaces
.implements Lcom/parrot/freeflight/gamepad/GamePadManager$CurrentWindowListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/parrot/freeflight/gamepad/EventSender;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/parrot/freeflight/gamepad/EventSender;


# direct methods
.method constructor <init>(Lcom/parrot/freeflight/gamepad/EventSender;)V
    .locals 0
    .param p1, "this$0"    # Lcom/parrot/freeflight/gamepad/EventSender;

    .prologue
    .line 55
    iput-object p1, p0, Lcom/parrot/freeflight/gamepad/EventSender$1;->this$0:Lcom/parrot/freeflight/gamepad/EventSender;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCurrentActivityChange(Landroid/app/Activity;)V
    .locals 4
    .param p1, "activity"    # Landroid/app/Activity;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 58
    iget-object v0, p0, Lcom/parrot/freeflight/gamepad/EventSender$1;->this$0:Lcom/parrot/freeflight/gamepad/EventSender;

    invoke-static {v0}, Lcom/parrot/freeflight/gamepad/EventSender;->access$000(Lcom/parrot/freeflight/gamepad/EventSender;)Landroid/app/Activity;

    move-result-object v0

    if-eq v0, p1, :cond_0

    .line 59
    iget-object v0, p0, Lcom/parrot/freeflight/gamepad/EventSender$1;->this$0:Lcom/parrot/freeflight/gamepad/EventSender;

    invoke-static {v0, p1}, Lcom/parrot/freeflight/gamepad/EventSender;->access$002(Lcom/parrot/freeflight/gamepad/EventSender;Landroid/app/Activity;)Landroid/app/Activity;

    .line 60
    iget-object v0, p0, Lcom/parrot/freeflight/gamepad/EventSender$1;->this$0:Lcom/parrot/freeflight/gamepad/EventSender;

    invoke-static {v0}, Lcom/parrot/freeflight/gamepad/EventSender;->access$000(Lcom/parrot/freeflight/gamepad/EventSender;)Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 61
    iget-object v0, p0, Lcom/parrot/freeflight/gamepad/EventSender$1;->this$0:Lcom/parrot/freeflight/gamepad/EventSender;

    new-instance v1, Landroid/view/inputmethod/BaseInputConnection;

    iget-object v2, p0, Lcom/parrot/freeflight/gamepad/EventSender$1;->this$0:Lcom/parrot/freeflight/gamepad/EventSender;

    invoke-static {v2}, Lcom/parrot/freeflight/gamepad/EventSender;->access$000(Lcom/parrot/freeflight/gamepad/EventSender;)Landroid/app/Activity;

    move-result-object v2

    const v3, 0x1020002

    invoke-virtual {v2, v3}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Landroid/view/inputmethod/BaseInputConnection;-><init>(Landroid/view/View;Z)V

    invoke-static {v0, v1}, Lcom/parrot/freeflight/gamepad/EventSender;->access$102(Lcom/parrot/freeflight/gamepad/EventSender;Landroid/view/inputmethod/BaseInputConnection;)Landroid/view/inputmethod/BaseInputConnection;

    .line 64
    :cond_0
    return-void
.end method

.method public onCurrentDialogChange(Landroid/app/Dialog;)V
    .locals 4
    .param p1, "dialog"    # Landroid/app/Dialog;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 68
    if-eqz p1, :cond_0

    .line 69
    iget-object v0, p0, Lcom/parrot/freeflight/gamepad/EventSender$1;->this$0:Lcom/parrot/freeflight/gamepad/EventSender;

    new-instance v1, Landroid/view/inputmethod/BaseInputConnection;

    const v2, 0x1020002

    invoke-virtual {p1, v2}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v2

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Landroid/view/inputmethod/BaseInputConnection;-><init>(Landroid/view/View;Z)V

    invoke-static {v0, v1}, Lcom/parrot/freeflight/gamepad/EventSender;->access$202(Lcom/parrot/freeflight/gamepad/EventSender;Landroid/view/inputmethod/BaseInputConnection;)Landroid/view/inputmethod/BaseInputConnection;

    .line 73
    :goto_0
    return-void

    .line 71
    :cond_0
    iget-object v0, p0, Lcom/parrot/freeflight/gamepad/EventSender$1;->this$0:Lcom/parrot/freeflight/gamepad/EventSender;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/parrot/freeflight/gamepad/EventSender;->access$202(Lcom/parrot/freeflight/gamepad/EventSender;Landroid/view/inputmethod/BaseInputConnection;)Landroid/view/inputmethod/BaseInputConnection;

    goto :goto_0
.end method
