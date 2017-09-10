.class Lcom/parrot/arsdk/arstream/ARStreamSender$2;
.super Ljava/lang/Object;
.source "ARStreamSender.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/parrot/arsdk/arstream/ARStreamSender;-><init>(Lcom/parrot/arsdk/arnetwork/ARNetworkManager;IILcom/parrot/arsdk/arstream/ARStreamSenderListener;III)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/parrot/arsdk/arstream/ARStreamSender;


# direct methods
.method constructor <init>(Lcom/parrot/arsdk/arstream/ARStreamSender;)V
    .locals 0
    .param p1, "this$0"    # Lcom/parrot/arsdk/arstream/ARStreamSender;

    .prologue
    .line 155
    iput-object p1, p0, Lcom/parrot/arsdk/arstream/ARStreamSender$2;->this$0:Lcom/parrot/arsdk/arstream/ARStreamSender;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 157
    iget-object v0, p0, Lcom/parrot/arsdk/arstream/ARStreamSender$2;->this$0:Lcom/parrot/arsdk/arstream/ARStreamSender;

    iget-object v1, p0, Lcom/parrot/arsdk/arstream/ARStreamSender$2;->this$0:Lcom/parrot/arsdk/arstream/ARStreamSender;

    invoke-static {v1}, Lcom/parrot/arsdk/arstream/ARStreamSender;->access$000(Lcom/parrot/arsdk/arstream/ARStreamSender;)J

    move-result-wide v2

    invoke-static {v0, v2, v3}, Lcom/parrot/arsdk/arstream/ARStreamSender;->access$200(Lcom/parrot/arsdk/arstream/ARStreamSender;J)V

    .line 158
    return-void
.end method
