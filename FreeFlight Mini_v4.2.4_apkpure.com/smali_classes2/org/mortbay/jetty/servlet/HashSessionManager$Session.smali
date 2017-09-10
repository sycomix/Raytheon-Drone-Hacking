.class public Lorg/mortbay/jetty/servlet/HashSessionManager$Session;
.super Lorg/mortbay/jetty/servlet/AbstractSessionManager$Session;
.source "HashSessionManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/mortbay/jetty/servlet/HashSessionManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "Session"
.end annotation


# static fields
.field private static final serialVersionUID:J = -0x1d9f57e17308c20fL


# instance fields
.field private final this$0:Lorg/mortbay/jetty/servlet/HashSessionManager;


# direct methods
.method protected constructor <init>(Lorg/mortbay/jetty/servlet/HashSessionManager;JLjava/lang/String;)V
    .locals 0
    .param p2, "created"    # J
    .param p4, "clusterId"    # Ljava/lang/String;

    .prologue
    .line 523
    iput-object p1, p0, Lorg/mortbay/jetty/servlet/HashSessionManager$Session;->this$0:Lorg/mortbay/jetty/servlet/HashSessionManager;

    .line 524
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/mortbay/jetty/servlet/AbstractSessionManager$Session;-><init>(Lorg/mortbay/jetty/servlet/AbstractSessionManager;JLjava/lang/String;)V

    .line 525
    return-void
.end method

.method protected constructor <init>(Lorg/mortbay/jetty/servlet/HashSessionManager;Ljavax/servlet/http/HttpServletRequest;)V
    .locals 0
    .param p2, "request"    # Ljavax/servlet/http/HttpServletRequest;

    .prologue
    .line 518
    iput-object p1, p0, Lorg/mortbay/jetty/servlet/HashSessionManager$Session;->this$0:Lorg/mortbay/jetty/servlet/HashSessionManager;

    .line 519
    invoke-direct {p0, p1, p2}, Lorg/mortbay/jetty/servlet/AbstractSessionManager$Session;-><init>(Lorg/mortbay/jetty/servlet/AbstractSessionManager;Ljavax/servlet/http/HttpServletRequest;)V

    .line 520
    return-void
.end method


# virtual methods
.method public invalidate()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 544
    invoke-super {p0}, Lorg/mortbay/jetty/servlet/AbstractSessionManager$Session;->invalidate()V

    .line 545
    invoke-virtual {p0}, Lorg/mortbay/jetty/servlet/HashSessionManager$Session;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/mortbay/jetty/servlet/HashSessionManager$Session;->remove(Ljava/lang/String;)V

    .line 546
    return-void
.end method

.method protected newAttributeMap()Ljava/util/Map;
    .locals 2

    .prologue
    .line 537
    new-instance v0, Ljava/util/HashMap;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    return-object v0
.end method

.method public remove(Ljava/lang/String;)V
    .locals 2
    .param p1, "id"    # Ljava/lang/String;

    .prologue
    .line 550
    if-nez p1, :cond_1

    .line 565
    :cond_0
    :goto_0
    return-void

    .line 555
    :cond_1
    iget-object v1, p0, Lorg/mortbay/jetty/servlet/HashSessionManager$Session;->this$0:Lorg/mortbay/jetty/servlet/HashSessionManager;

    invoke-virtual {v1}, Lorg/mortbay/jetty/servlet/HashSessionManager;->isStopping()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lorg/mortbay/jetty/servlet/HashSessionManager$Session;->this$0:Lorg/mortbay/jetty/servlet/HashSessionManager;

    invoke-virtual {v1}, Lorg/mortbay/jetty/servlet/HashSessionManager;->isStopped()Z

    move-result v1

    if-nez v1, :cond_0

    .line 558
    iget-object v1, p0, Lorg/mortbay/jetty/servlet/HashSessionManager$Session;->this$0:Lorg/mortbay/jetty/servlet/HashSessionManager;

    invoke-static {v1}, Lorg/mortbay/jetty/servlet/HashSessionManager;->access$200(Lorg/mortbay/jetty/servlet/HashSessionManager;)Ljava/io/File;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lorg/mortbay/jetty/servlet/HashSessionManager$Session;->this$0:Lorg/mortbay/jetty/servlet/HashSessionManager;

    invoke-static {v1}, Lorg/mortbay/jetty/servlet/HashSessionManager;->access$200(Lorg/mortbay/jetty/servlet/HashSessionManager;)Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 563
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lorg/mortbay/jetty/servlet/HashSessionManager$Session;->this$0:Lorg/mortbay/jetty/servlet/HashSessionManager;

    invoke-static {v1}, Lorg/mortbay/jetty/servlet/HashSessionManager;->access$200(Lorg/mortbay/jetty/servlet/HashSessionManager;)Ljava/io/File;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 564
    .local v0, "f":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    goto :goto_0
.end method

.method public save(Ljava/io/FileOutputStream;)V
    .locals 6
    .param p1, "fos"    # Ljava/io/FileOutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 569
    new-instance v3, Ljava/io/DataOutputStream;

    invoke-direct {v3, p1}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 570
    .local v3, "out":Ljava/io/DataOutputStream;
    iget-object v4, p0, Lorg/mortbay/jetty/servlet/HashSessionManager$Session;->_clusterId:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 571
    iget-object v4, p0, Lorg/mortbay/jetty/servlet/HashSessionManager$Session;->_nodeId:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 572
    iget-boolean v4, p0, Lorg/mortbay/jetty/servlet/HashSessionManager$Session;->_idChanged:Z

    invoke-virtual {v3, v4}, Ljava/io/DataOutputStream;->writeBoolean(Z)V

    .line 573
    iget-wide v4, p0, Lorg/mortbay/jetty/servlet/HashSessionManager$Session;->_created:J

    invoke-virtual {v3, v4, v5}, Ljava/io/DataOutputStream;->writeLong(J)V

    .line 574
    iget-wide v4, p0, Lorg/mortbay/jetty/servlet/HashSessionManager$Session;->_cookieSet:J

    invoke-virtual {v3, v4, v5}, Ljava/io/DataOutputStream;->writeLong(J)V

    .line 575
    iget-wide v4, p0, Lorg/mortbay/jetty/servlet/HashSessionManager$Session;->_accessed:J

    invoke-virtual {v3, v4, v5}, Ljava/io/DataOutputStream;->writeLong(J)V

    .line 576
    iget-wide v4, p0, Lorg/mortbay/jetty/servlet/HashSessionManager$Session;->_lastAccessed:J

    invoke-virtual {v3, v4, v5}, Ljava/io/DataOutputStream;->writeLong(J)V

    .line 585
    iget v4, p0, Lorg/mortbay/jetty/servlet/HashSessionManager$Session;->_requests:I

    invoke-virtual {v3, v4}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 586
    iget-object v4, p0, Lorg/mortbay/jetty/servlet/HashSessionManager$Session;->_values:Ljava/util/Map;

    if-eqz v4, :cond_2

    .line 588
    iget-object v4, p0, Lorg/mortbay/jetty/servlet/HashSessionManager$Session;->_values:Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 589
    iget-object v4, p0, Lorg/mortbay/jetty/servlet/HashSessionManager$Session;->_values:Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 590
    .local v0, "itor":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 592
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 593
    .local v1, "key":Ljava/lang/String;
    invoke-virtual {v3, v1}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    goto :goto_0

    .line 595
    .end local v1    # "key":Ljava/lang/String;
    :cond_0
    iget-object v4, p0, Lorg/mortbay/jetty/servlet/HashSessionManager$Session;->_values:Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 596
    new-instance v2, Ljava/io/ObjectOutputStream;

    invoke-direct {v2, v3}, Ljava/io/ObjectOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 597
    .local v2, "oos":Ljava/io/ObjectOutputStream;
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 599
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    goto :goto_1

    .line 601
    :cond_1
    invoke-virtual {v2}, Ljava/io/ObjectOutputStream;->close()V

    .line 605
    .end local v0    # "itor":Ljava/util/Iterator;
    .end local v2    # "oos":Ljava/io/ObjectOutputStream;
    :goto_2
    invoke-virtual {v3}, Ljava/io/DataOutputStream;->close()V

    .line 606
    return-void

    .line 604
    :cond_2
    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Ljava/io/DataOutputStream;->writeInt(I)V

    goto :goto_2
.end method

.method public setMaxInactiveInterval(I)V
    .locals 4
    .param p1, "secs"    # I

    .prologue
    .line 529
    invoke-super {p0, p1}, Lorg/mortbay/jetty/servlet/AbstractSessionManager$Session;->setMaxInactiveInterval(I)V

    .line 530
    iget-wide v0, p0, Lorg/mortbay/jetty/servlet/HashSessionManager$Session;->_maxIdleMs:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    iget-wide v0, p0, Lorg/mortbay/jetty/servlet/HashSessionManager$Session;->_maxIdleMs:J

    const-wide/16 v2, 0xa

    div-long/2addr v0, v2

    iget-object v2, p0, Lorg/mortbay/jetty/servlet/HashSessionManager$Session;->this$0:Lorg/mortbay/jetty/servlet/HashSessionManager;

    invoke-static {v2}, Lorg/mortbay/jetty/servlet/HashSessionManager;->access$100(Lorg/mortbay/jetty/servlet/HashSessionManager;)I

    move-result v2

    int-to-long v2, v2

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    .line 531
    iget-object v0, p0, Lorg/mortbay/jetty/servlet/HashSessionManager$Session;->this$0:Lorg/mortbay/jetty/servlet/HashSessionManager;

    add-int/lit8 v1, p1, 0x9

    div-int/lit8 v1, v1, 0xa

    invoke-virtual {v0, v1}, Lorg/mortbay/jetty/servlet/HashSessionManager;->setScavengePeriod(I)V

    .line 532
    :cond_0
    return-void
.end method
