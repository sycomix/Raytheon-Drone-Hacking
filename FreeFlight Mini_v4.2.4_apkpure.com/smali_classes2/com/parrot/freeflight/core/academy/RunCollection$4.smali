.class Lcom/parrot/freeflight/core/academy/RunCollection$4;
.super Ljava/lang/Object;
.source "RunCollection.java"

# interfaces
.implements Lcom/parrot/freeflight/core/academy/RunCollection$IRunChecker;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/parrot/freeflight/core/academy/RunCollection;-><init>(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/parrot/freeflight/core/academy/RunCollection;


# direct methods
.method constructor <init>(Lcom/parrot/freeflight/core/academy/RunCollection;)V
    .locals 0
    .param p1, "this$0"    # Lcom/parrot/freeflight/core/academy/RunCollection;

    .prologue
    .line 99
    iput-object p1, p0, Lcom/parrot/freeflight/core/academy/RunCollection$4;->this$0:Lcom/parrot/freeflight/core/academy/RunCollection;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public checkRun(Lcom/parrot/freeflight/core/academy/RunInformation;)Z
    .locals 1
    .param p1, "run"    # Lcom/parrot/freeflight/core/academy/RunInformation;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 102
    invoke-virtual {p1}, Lcom/parrot/freeflight/core/academy/RunInformation;->needDownload()Z

    move-result v0

    return v0
.end method
