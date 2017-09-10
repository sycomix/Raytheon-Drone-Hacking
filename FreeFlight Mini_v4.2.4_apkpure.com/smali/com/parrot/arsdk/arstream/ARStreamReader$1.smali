.class Lcom/parrot/arsdk/arstream/ARStreamReader$1;
.super Ljava/lang/Object;
.source "ARStreamReader.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/parrot/arsdk/arstream/ARStreamReader;-><init>(Lcom/parrot/arsdk/arnetwork/ARNetworkManager;IILcom/parrot/arsdk/arsal/ARNativeData;Lcom/parrot/arsdk/arstream/ARStreamReaderListener;II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/parrot/arsdk/arstream/ARStreamReader;


# direct methods
.method constructor <init>(Lcom/parrot/arsdk/arstream/ARStreamReader;)V
    .locals 0
    .param p1, "this$0"    # Lcom/parrot/arsdk/arstream/ARStreamReader;

    .prologue
    .line 148
    iput-object p1, p0, Lcom/parrot/arsdk/arstream/ARStreamReader$1;->this$0:Lcom/parrot/arsdk/arstream/ARStreamReader;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 150
    iget-object v0, p0, Lcom/parrot/arsdk/arstream/ARStreamReader$1;->this$0:Lcom/parrot/arsdk/arstream/ARStreamReader;

    iget-object v1, p0, Lcom/parrot/arsdk/arstream/ARStreamReader$1;->this$0:Lcom/parrot/arsdk/arstream/ARStreamReader;

    invoke-static {v1}, Lcom/parrot/arsdk/arstream/ARStreamReader;->access$000(Lcom/parrot/arsdk/arstream/ARStreamReader;)J

    move-result-wide v2

    invoke-static {v0, v2, v3}, Lcom/parrot/arsdk/arstream/ARStreamReader;->access$100(Lcom/parrot/arsdk/arstream/ARStreamReader;J)V

    .line 151
    return-void
.end method
