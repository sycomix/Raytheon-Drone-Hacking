.class Lcom/parrot/freeflight/core/academy/AcademyManager$6;
.super Ljava/lang/Object;
.source "AcademyManager.java"

# interfaces
.implements Lcom/parrot/freeflight/network/InternetConnectionChecker$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/parrot/freeflight/core/academy/AcademyManager;->start()V
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
    .line 422
    iput-object p1, p0, Lcom/parrot/freeflight/core/academy/AcademyManager$6;->this$0:Lcom/parrot/freeflight/core/academy/AcademyManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheck(Z)V
    .locals 1
    .param p1, "hasInternet"    # Z

    .prologue
    .line 425
    iget-object v0, p0, Lcom/parrot/freeflight/core/academy/AcademyManager$6;->this$0:Lcom/parrot/freeflight/core/academy/AcademyManager;

    invoke-static {v0, p1}, Lcom/parrot/freeflight/core/academy/AcademyManager;->access$700(Lcom/parrot/freeflight/core/academy/AcademyManager;Z)V

    .line 426
    return-void
.end method
