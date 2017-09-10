.class Lcom/parrot/freeflight/gamepad/list/GamePadListView$1;
.super Ljava/lang/Object;
.source "GamePadListView.java"

# interfaces
.implements Lcom/parrot/freeflight/gamepad/list/GamePadListAdapter$IListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/parrot/freeflight/gamepad/list/GamePadListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/parrot/freeflight/gamepad/list/GamePadListView;


# direct methods
.method constructor <init>(Lcom/parrot/freeflight/gamepad/list/GamePadListView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/parrot/freeflight/gamepad/list/GamePadListView;

    .prologue
    .line 52
    iput-object p1, p0, Lcom/parrot/freeflight/gamepad/list/GamePadListView$1;->this$0:Lcom/parrot/freeflight/gamepad/list/GamePadListView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGamePadSelected(Lcom/parrot/freeflight/gamepad/GamePad;)V
    .locals 1
    .param p1, "gamepad"    # Lcom/parrot/freeflight/gamepad/GamePad;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 55
    iget-object v0, p0, Lcom/parrot/freeflight/gamepad/list/GamePadListView$1;->this$0:Lcom/parrot/freeflight/gamepad/list/GamePadListView;

    invoke-static {v0}, Lcom/parrot/freeflight/gamepad/list/GamePadListView;->access$000(Lcom/parrot/freeflight/gamepad/list/GamePadListView;)Lcom/parrot/freeflight/gamepad/list/GamePadListView$OnDeviceClickListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 56
    iget-object v0, p0, Lcom/parrot/freeflight/gamepad/list/GamePadListView$1;->this$0:Lcom/parrot/freeflight/gamepad/list/GamePadListView;

    invoke-static {v0}, Lcom/parrot/freeflight/gamepad/list/GamePadListView;->access$000(Lcom/parrot/freeflight/gamepad/list/GamePadListView;)Lcom/parrot/freeflight/gamepad/list/GamePadListView$OnDeviceClickListener;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/parrot/freeflight/gamepad/list/GamePadListView$OnDeviceClickListener;->onDeviceClick(Lcom/parrot/freeflight/gamepad/GamePad;)V

    .line 58
    :cond_0
    return-void
.end method
