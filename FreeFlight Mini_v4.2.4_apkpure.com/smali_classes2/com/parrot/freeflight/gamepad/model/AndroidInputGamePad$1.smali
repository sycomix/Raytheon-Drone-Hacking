.class Lcom/parrot/freeflight/gamepad/model/AndroidInputGamePad$1;
.super Ljava/lang/Object;
.source "AndroidInputGamePad.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/parrot/freeflight/gamepad/model/AndroidInputGamePad;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/parrot/freeflight/gamepad/model/AndroidInputGamePad;


# direct methods
.method constructor <init>(Lcom/parrot/freeflight/gamepad/model/AndroidInputGamePad;)V
    .locals 0
    .param p1, "this$0"    # Lcom/parrot/freeflight/gamepad/model/AndroidInputGamePad;

    .prologue
    .line 63
    iput-object p1, p0, Lcom/parrot/freeflight/gamepad/model/AndroidInputGamePad$1;->this$0:Lcom/parrot/freeflight/gamepad/model/AndroidInputGamePad;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 66
    iget-object v0, p0, Lcom/parrot/freeflight/gamepad/model/AndroidInputGamePad$1;->this$0:Lcom/parrot/freeflight/gamepad/model/AndroidInputGamePad;

    invoke-static {v0}, Lcom/parrot/freeflight/gamepad/model/AndroidInputGamePad;->access$000(Lcom/parrot/freeflight/gamepad/model/AndroidInputGamePad;)V

    .line 67
    return-void
.end method
