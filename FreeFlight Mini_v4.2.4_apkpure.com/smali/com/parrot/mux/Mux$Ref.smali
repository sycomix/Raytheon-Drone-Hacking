.class public Lcom/parrot/mux/Mux$Ref;
.super Ljava/lang/Object;
.source "Mux.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/parrot/mux/Mux;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "Ref"
.end annotation


# instance fields
.field private muxRef:J

.field final synthetic this$0:Lcom/parrot/mux/Mux;


# direct methods
.method protected constructor <init>(Lcom/parrot/mux/Mux;)V
    .locals 2
    .param p1, "this$0"    # Lcom/parrot/mux/Mux;

    .prologue
    .line 43
    iput-object p1, p0, Lcom/parrot/mux/Mux$Ref;->this$0:Lcom/parrot/mux/Mux;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    invoke-static {p1}, Lcom/parrot/mux/Mux;->access$000(Lcom/parrot/mux/Mux;)J

    move-result-wide v0

    invoke-static {p1, v0, v1}, Lcom/parrot/mux/Mux;->access$100(Lcom/parrot/mux/Mux;J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/parrot/mux/Mux$Ref;->muxRef:J

    .line 45
    return-void
.end method


# virtual methods
.method public finalize()V
    .locals 4

    .prologue
    .line 57
    iget-wide v0, p0, Lcom/parrot/mux/Mux$Ref;->muxRef:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    .line 58
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Leaking a mux reference !"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 60
    :cond_0
    return-void
.end method

.method public getCPtr()J
    .locals 2

    .prologue
    .line 48
    iget-wide v0, p0, Lcom/parrot/mux/Mux$Ref;->muxRef:J

    return-wide v0
.end method

.method public release()V
    .locals 4

    .prologue
    .line 52
    iget-object v0, p0, Lcom/parrot/mux/Mux$Ref;->this$0:Lcom/parrot/mux/Mux;

    iget-object v1, p0, Lcom/parrot/mux/Mux$Ref;->this$0:Lcom/parrot/mux/Mux;

    invoke-static {v1}, Lcom/parrot/mux/Mux;->access$000(Lcom/parrot/mux/Mux;)J

    move-result-wide v2

    invoke-static {v0, v2, v3}, Lcom/parrot/mux/Mux;->access$200(Lcom/parrot/mux/Mux;J)V

    .line 53
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/parrot/mux/Mux$Ref;->muxRef:J

    .line 54
    return-void
.end method
