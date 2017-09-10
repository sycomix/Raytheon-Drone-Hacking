.class final Lcom/google/gdata/util/httputil/FormUrlDecoder$1;
.super Ljava/lang/Object;
.source "FormUrlDecoder.java"

# interfaces
.implements Lcom/google/gdata/util/httputil/FormUrlDecoder$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/gdata/util/httputil/FormUrlDecoder;->parse(Ljava/lang/String;Lcom/google/gdata/util/httputil/ParamMap;Ljava/lang/String;)Lcom/google/gdata/util/httputil/ParamMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$outMap:Ljava/util/concurrent/atomic/AtomicReference;


# direct methods
.method constructor <init>(Ljava/util/concurrent/atomic/AtomicReference;)V
    .locals 0

    .prologue
    .line 97
    iput-object p1, p0, Lcom/google/gdata/util/httputil/FormUrlDecoder$1;->val$outMap:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public handleParameter(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 99
    iget-object v1, p0, Lcom/google/gdata/util/httputil/FormUrlDecoder$1;->val$outMap:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/gdata/util/httputil/ParamMap;

    .line 100
    .local v0, "map":Lcom/google/gdata/util/httputil/ParamMap;
    if-nez v0, :cond_0

    .line 101
    new-instance v0, Lcom/google/gdata/util/httputil/ParamMap;

    .end local v0    # "map":Lcom/google/gdata/util/httputil/ParamMap;
    invoke-direct {v0}, Lcom/google/gdata/util/httputil/ParamMap;-><init>()V

    .line 102
    .restart local v0    # "map":Lcom/google/gdata/util/httputil/ParamMap;
    iget-object v1, p0, Lcom/google/gdata/util/httputil/FormUrlDecoder$1;->val$outMap:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v1, v0}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 104
    :cond_0
    invoke-virtual {v0, p1, p2}, Lcom/google/gdata/util/httputil/ParamMap;->append(Ljava/lang/String;Ljava/lang/String;)V

    .line 105
    return-void
.end method
