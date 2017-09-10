.class Lcom/parrot/freeflight/core/academy/AcademyManager$7;
.super Ljava/lang/Object;
.source "AcademyManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/parrot/freeflight/core/academy/AcademyManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/parrot/freeflight/core/academy/AcademyManager;


# direct methods
.method constructor <init>(Lcom/parrot/freeflight/core/academy/AcademyManager;)V
    .locals 0
    .param p1, "this$0"    # Lcom/parrot/freeflight/core/academy/AcademyManager;

    .prologue
    .line 456
    iput-object p1, p0, Lcom/parrot/freeflight/core/academy/AcademyManager$7;->this$0:Lcom/parrot/freeflight/core/academy/AcademyManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 459
    iget-object v0, p0, Lcom/parrot/freeflight/core/academy/AcademyManager$7;->this$0:Lcom/parrot/freeflight/core/academy/AcademyManager;

    invoke-static {v0}, Lcom/parrot/freeflight/core/academy/AcademyManager;->access$2300(Lcom/parrot/freeflight/core/academy/AcademyManager;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/parrot/freeflight/core/academy/AcademyManager$7;->this$0:Lcom/parrot/freeflight/core/academy/AcademyManager;

    invoke-static {v1}, Lcom/parrot/freeflight/core/academy/AcademyManager;->access$2200(Lcom/parrot/freeflight/core/academy/AcademyManager;)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Context;->stopService(Landroid/content/Intent;)Z

    .line 460
    iget-object v0, p0, Lcom/parrot/freeflight/core/academy/AcademyManager$7;->this$0:Lcom/parrot/freeflight/core/academy/AcademyManager;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/parrot/freeflight/core/academy/AcademyManager;->access$802(Lcom/parrot/freeflight/core/academy/AcademyManager;Lcom/parrot/arsdk/aracademy/ARAcademyManager;)Lcom/parrot/arsdk/aracademy/ARAcademyManager;

    .line 461
    return-void
.end method
