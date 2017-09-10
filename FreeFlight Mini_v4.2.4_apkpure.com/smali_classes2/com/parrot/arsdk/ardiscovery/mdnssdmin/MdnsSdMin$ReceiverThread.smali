.class Lcom/parrot/arsdk/ardiscovery/mdnssdmin/MdnsSdMin$ReceiverThread;
.super Ljava/lang/Thread;
.source "MdnsSdMin.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/parrot/arsdk/ardiscovery/mdnssdmin/MdnsSdMin;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ReceiverThread"
.end annotation


# instance fields
.field private final socket:Ljava/net/DatagramSocket;

.field final synthetic this$0:Lcom/parrot/arsdk/ardiscovery/mdnssdmin/MdnsSdMin;


# direct methods
.method public constructor <init>(Lcom/parrot/arsdk/ardiscovery/mdnssdmin/MdnsSdMin;Ljava/net/DatagramSocket;)V
    .locals 1
    .param p2, "socket"    # Ljava/net/DatagramSocket;

    .prologue
    .line 247
    iput-object p1, p0, Lcom/parrot/arsdk/ardiscovery/mdnssdmin/MdnsSdMin$ReceiverThread;->this$0:Lcom/parrot/arsdk/ardiscovery/mdnssdmin/MdnsSdMin;

    .line 248
    const-string v0, "MdnsSd-receiver"

    invoke-direct {p0, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    .line 249
    iput-object p2, p0, Lcom/parrot/arsdk/ardiscovery/mdnssdmin/MdnsSdMin$ReceiverThread;->socket:Ljava/net/DatagramSocket;

    .line 250
    return-void
.end method

.method private handleResponse(Lcom/parrot/arsdk/ardiscovery/mdnssdmin/internal/MdnsSdIncomingResponse;)V
    .locals 18
    .param p1, "response"    # Lcom/parrot/arsdk/ardiscovery/mdnssdmin/internal/MdnsSdIncomingResponse;

    .prologue
    .line 280
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/parrot/arsdk/ardiscovery/mdnssdmin/MdnsSdMin$ReceiverThread;->this$0:Lcom/parrot/arsdk/ardiscovery/mdnssdmin/MdnsSdMin;

    invoke-static {v2}, Lcom/parrot/arsdk/ardiscovery/mdnssdmin/MdnsSdMin;->access$000(Lcom/parrot/arsdk/ardiscovery/mdnssdmin/MdnsSdMin;)[Ljava/lang/String;

    move-result-object v12

    array-length v13, v12

    const/4 v2, 0x0

    move v11, v2

    :goto_0
    if-ge v11, v13, :cond_4

    aget-object v4, v12, v11

    .line 282
    .local v4, "question":Ljava/lang/String;
    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Lcom/parrot/arsdk/ardiscovery/mdnssdmin/internal/MdnsSdIncomingResponse;->getPtr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 283
    .local v9, "ptr":Ljava/lang/String;
    if-eqz v9, :cond_1

    .line 286
    move-object/from16 v0, p1

    invoke-virtual {v0, v9}, Lcom/parrot/arsdk/ardiscovery/mdnssdmin/internal/MdnsSdIncomingResponse;->getService(Ljava/lang/String;)Lcom/parrot/arsdk/ardiscovery/mdnssdmin/MdnsSrvData;

    move-result-object v10

    .line 287
    .local v10, "srv":Lcom/parrot/arsdk/ardiscovery/mdnssdmin/MdnsSrvData;
    if-eqz v10, :cond_1

    .line 289
    invoke-virtual {v10}, Lcom/parrot/arsdk/ardiscovery/mdnssdmin/MdnsSrvData;->getTarget()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Lcom/parrot/arsdk/ardiscovery/mdnssdmin/internal/MdnsSdIncomingResponse;->getAddress(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 290
    .local v5, "address":Ljava/lang/String;
    move-object/from16 v0, p1

    invoke-virtual {v0, v9}, Lcom/parrot/arsdk/ardiscovery/mdnssdmin/internal/MdnsSdIncomingResponse;->getTexts(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    .line 291
    .local v7, "txts":[Ljava/lang/String;
    if-eqz v5, :cond_1

    .line 294
    const/4 v8, -0x1

    .line 295
    .local v8, "pos":I
    invoke-virtual {v9, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 297
    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v6

    sub-int v8, v2, v6

    .line 299
    :cond_0
    const/4 v6, 0x0

    if-lez v8, :cond_2

    add-int/lit8 v2, v8, -0x1

    :goto_1
    invoke-virtual {v9, v6, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 300
    .local v3, "name":Ljava/lang/String;
    invoke-virtual {v10}, Lcom/parrot/arsdk/ardiscovery/mdnssdmin/MdnsSrvData;->getTtl()J

    move-result-wide v14

    const-wide/16 v16, 0x0

    cmp-long v2, v14, v16

    if-lez v2, :cond_3

    .line 302
    const-string v2, "MdnsSdMin"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "New service "

    invoke-virtual {v6, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v2, v6}, Lcom/parrot/arsdk/arsal/ARSALPrint;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 303
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/parrot/arsdk/ardiscovery/mdnssdmin/MdnsSdMin$ReceiverThread;->this$0:Lcom/parrot/arsdk/ardiscovery/mdnssdmin/MdnsSdMin;

    invoke-static {v2}, Lcom/parrot/arsdk/ardiscovery/mdnssdmin/MdnsSdMin;->access$100(Lcom/parrot/arsdk/ardiscovery/mdnssdmin/MdnsSdMin;)Lcom/parrot/arsdk/ardiscovery/mdnssdmin/MdnsSdMin$Listener;

    move-result-object v2

    invoke-virtual {v10}, Lcom/parrot/arsdk/ardiscovery/mdnssdmin/MdnsSrvData;->getPort()I

    move-result v6

    invoke-interface/range {v2 .. v7}, Lcom/parrot/arsdk/ardiscovery/mdnssdmin/MdnsSdMin$Listener;->onServiceAdded(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I[Ljava/lang/String;)V

    .line 280
    .end local v3    # "name":Ljava/lang/String;
    .end local v5    # "address":Ljava/lang/String;
    .end local v7    # "txts":[Ljava/lang/String;
    .end local v8    # "pos":I
    .end local v10    # "srv":Lcom/parrot/arsdk/ardiscovery/mdnssdmin/MdnsSrvData;
    :cond_1
    :goto_2
    add-int/lit8 v2, v11, 0x1

    move v11, v2

    goto :goto_0

    .line 299
    .restart local v5    # "address":Ljava/lang/String;
    .restart local v7    # "txts":[Ljava/lang/String;
    .restart local v8    # "pos":I
    .restart local v10    # "srv":Lcom/parrot/arsdk/ardiscovery/mdnssdmin/MdnsSrvData;
    :cond_2
    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v2

    goto :goto_1

    .line 306
    .restart local v3    # "name":Ljava/lang/String;
    :cond_3
    const-string v2, "MdnsSdMin"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Service removed "

    invoke-virtual {v6, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v2, v6}, Lcom/parrot/arsdk/arsal/ARSALPrint;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 307
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/parrot/arsdk/ardiscovery/mdnssdmin/MdnsSdMin$ReceiverThread;->this$0:Lcom/parrot/arsdk/ardiscovery/mdnssdmin/MdnsSdMin;

    invoke-static {v2}, Lcom/parrot/arsdk/ardiscovery/mdnssdmin/MdnsSdMin;->access$100(Lcom/parrot/arsdk/ardiscovery/mdnssdmin/MdnsSdMin;)Lcom/parrot/arsdk/ardiscovery/mdnssdmin/MdnsSdMin$Listener;

    move-result-object v2

    invoke-interface {v2, v3, v4}, Lcom/parrot/arsdk/ardiscovery/mdnssdmin/MdnsSdMin$Listener;->onServiceRemoved(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 313
    .end local v3    # "name":Ljava/lang/String;
    .end local v4    # "question":Ljava/lang/String;
    .end local v5    # "address":Ljava/lang/String;
    .end local v7    # "txts":[Ljava/lang/String;
    .end local v8    # "pos":I
    .end local v9    # "ptr":Ljava/lang/String;
    .end local v10    # "srv":Lcom/parrot/arsdk/ardiscovery/mdnssdmin/MdnsSrvData;
    :cond_4
    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    .line 255
    const/16 v4, 0x5dc

    new-array v0, v4, [B

    .line 256
    .local v0, "buffer":[B
    :goto_0
    iget-object v4, p0, Lcom/parrot/arsdk/ardiscovery/mdnssdmin/MdnsSdMin$ReceiverThread;->socket:Ljava/net/DatagramSocket;

    invoke-virtual {v4}, Ljava/net/DatagramSocket;->isClosed()Z

    move-result v4

    if-nez v4, :cond_0

    .line 260
    :try_start_0
    new-instance v2, Ljava/net/DatagramPacket;

    array-length v4, v0

    invoke-direct {v2, v0, v4}, Ljava/net/DatagramPacket;-><init>([BI)V

    .line 261
    .local v2, "packet":Ljava/net/DatagramPacket;
    iget-object v4, p0, Lcom/parrot/arsdk/ardiscovery/mdnssdmin/MdnsSdMin$ReceiverThread;->socket:Ljava/net/DatagramSocket;

    invoke-virtual {v4, v2}, Ljava/net/DatagramSocket;->receive(Ljava/net/DatagramPacket;)V

    .line 262
    new-instance v3, Lcom/parrot/arsdk/ardiscovery/mdnssdmin/internal/MdnsSdIncomingResponse;

    invoke-virtual {v2}, Ljava/net/DatagramPacket;->getData()[B

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/parrot/arsdk/ardiscovery/mdnssdmin/internal/MdnsSdIncomingResponse;-><init>([B)V

    .line 263
    .local v3, "r":Lcom/parrot/arsdk/ardiscovery/mdnssdmin/internal/MdnsSdIncomingResponse;
    invoke-direct {p0, v3}, Lcom/parrot/arsdk/ardiscovery/mdnssdmin/MdnsSdMin$ReceiverThread;->handleResponse(Lcom/parrot/arsdk/ardiscovery/mdnssdmin/internal/MdnsSdIncomingResponse;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 264
    .end local v2    # "packet":Ljava/net/DatagramPacket;
    .end local v3    # "r":Lcom/parrot/arsdk/ardiscovery/mdnssdmin/internal/MdnsSdIncomingResponse;
    :catch_0
    move-exception v1

    .line 267
    .local v1, "e":Ljava/lang/Throwable;
    const-string v4, "MdnsSdMin"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Ignoring received packet due to "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/parrot/arsdk/arsal/ARSALPrint;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 270
    .end local v1    # "e":Ljava/lang/Throwable;
    :cond_0
    return-void
.end method
