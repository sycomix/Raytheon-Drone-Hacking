.class Lcom/parrot/freeflight/media/task/MediaTask$1;
.super Ljava/lang/Object;
.source "MediaTask.java"

# interfaces
.implements Lcom/parrot/freeflight/media/task/MediaTask$MediaTaskActionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/parrot/freeflight/media/task/MediaTask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/parrot/freeflight/media/task/MediaTask;


# direct methods
.method constructor <init>(Lcom/parrot/freeflight/media/task/MediaTask;)V
    .locals 0
    .param p1, "this$0"    # Lcom/parrot/freeflight/media/task/MediaTask;

    .prologue
    .line 37
    iput-object p1, p0, Lcom/parrot/freeflight/media/task/MediaTask$1;->this$0:Lcom/parrot/freeflight/media/task/MediaTask;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public isCancelled()Z
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lcom/parrot/freeflight/media/task/MediaTask$1;->this$0:Lcom/parrot/freeflight/media/task/MediaTask;

    invoke-virtual {v0}, Lcom/parrot/freeflight/media/task/MediaTask;->isCancelled()Z

    move-result v0

    return v0
.end method

.method public varargs publishProgress([Lcom/parrot/freeflight/media/task/MediaTask$ProgressResult;)V
    .locals 1
    .param p1, "objects"    # [Lcom/parrot/freeflight/media/task/MediaTask$ProgressResult;

    .prologue
    .line 40
    iget-object v0, p0, Lcom/parrot/freeflight/media/task/MediaTask$1;->this$0:Lcom/parrot/freeflight/media/task/MediaTask;

    invoke-static {v0, p1}, Lcom/parrot/freeflight/media/task/MediaTask;->access$000(Lcom/parrot/freeflight/media/task/MediaTask;[Ljava/lang/Object;)V

    .line 41
    return-void
.end method
