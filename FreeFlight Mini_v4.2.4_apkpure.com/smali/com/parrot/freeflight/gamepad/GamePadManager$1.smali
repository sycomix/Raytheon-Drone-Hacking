.class Lcom/parrot/freeflight/gamepad/GamePadManager$1;
.super Ljava/lang/Object;
.source "GamePadManager.java"

# interfaces
.implements Lcom/parrot/freeflight/core/ApplicationManager$OnCurrentActivityChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/parrot/freeflight/gamepad/GamePadManager;-><init>(Lcom/parrot/freeflight/core/ApplicationManager;Lcom/parrot/freeflight/core/model/ModelStore;Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/parrot/freeflight/gamepad/GamePadManager;


# direct methods
.method constructor <init>(Lcom/parrot/freeflight/gamepad/GamePadManager;)V
    .locals 0
    .param p1, "this$0"    # Lcom/parrot/freeflight/gamepad/GamePadManager;

    .prologue
    .line 77
    iput-object p1, p0, Lcom/parrot/freeflight/gamepad/GamePadManager$1;->this$0:Lcom/parrot/freeflight/gamepad/GamePadManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCurrentActivityChange(Landroid/app/Activity;)V
    .locals 1
    .param p1, "activity"    # Landroid/app/Activity;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 80
    iget-object v0, p0, Lcom/parrot/freeflight/gamepad/GamePadManager$1;->this$0:Lcom/parrot/freeflight/gamepad/GamePadManager;

    invoke-static {v0, p1}, Lcom/parrot/freeflight/gamepad/GamePadManager;->access$002(Lcom/parrot/freeflight/gamepad/GamePadManager;Landroid/app/Activity;)Landroid/app/Activity;

    .line 81
    iget-object v0, p0, Lcom/parrot/freeflight/gamepad/GamePadManager$1;->this$0:Lcom/parrot/freeflight/gamepad/GamePadManager;

    invoke-static {v0}, Lcom/parrot/freeflight/gamepad/GamePadManager;->access$100(Lcom/parrot/freeflight/gamepad/GamePadManager;)V

    .line 82
    return-void
.end method
