.class Lcom/parrot/freeflight/gamepad/list/GamePadListView$3;
.super Ljava/lang/Object;
.source "GamePadListView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/parrot/freeflight/gamepad/list/GamePadListView;->switchVisibility()V
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
    .line 108
    iput-object p1, p0, Lcom/parrot/freeflight/gamepad/list/GamePadListView$3;->this$0:Lcom/parrot/freeflight/gamepad/list/GamePadListView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 111
    iget-object v0, p0, Lcom/parrot/freeflight/gamepad/list/GamePadListView$3;->this$0:Lcom/parrot/freeflight/gamepad/list/GamePadListView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/parrot/freeflight/gamepad/list/GamePadListView;->setVisibility(I)V

    .line 112
    return-void
.end method
