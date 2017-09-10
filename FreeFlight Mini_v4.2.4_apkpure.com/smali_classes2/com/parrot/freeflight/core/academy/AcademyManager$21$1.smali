.class Lcom/parrot/freeflight/core/academy/AcademyManager$21$1;
.super Ljava/lang/Object;
.source "AcademyManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/parrot/freeflight/core/academy/AcademyManager$21;->onChange()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/parrot/freeflight/core/academy/AcademyManager$21;


# direct methods
.method constructor <init>(Lcom/parrot/freeflight/core/academy/AcademyManager$21;)V
    .locals 0
    .param p1, "this$1"    # Lcom/parrot/freeflight/core/academy/AcademyManager$21;

    .prologue
    .line 1398
    iput-object p1, p0, Lcom/parrot/freeflight/core/academy/AcademyManager$21$1;->this$1:Lcom/parrot/freeflight/core/academy/AcademyManager$21;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 1401
    iget-object v0, p0, Lcom/parrot/freeflight/core/academy/AcademyManager$21$1;->this$1:Lcom/parrot/freeflight/core/academy/AcademyManager$21;

    iget-object v0, v0, Lcom/parrot/freeflight/core/academy/AcademyManager$21;->this$0:Lcom/parrot/freeflight/core/academy/AcademyManager;

    invoke-static {v0}, Lcom/parrot/freeflight/core/academy/AcademyManager;->access$100(Lcom/parrot/freeflight/core/academy/AcademyManager;)V

    .line 1402
    return-void
.end method
