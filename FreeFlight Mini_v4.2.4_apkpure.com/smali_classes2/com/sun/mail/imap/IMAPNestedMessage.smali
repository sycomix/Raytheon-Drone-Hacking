.class public Lcom/sun/mail/imap/IMAPNestedMessage;
.super Lcom/sun/mail/imap/IMAPMessage;
.source "IMAPNestedMessage.java"


# instance fields
.field private msg:Lcom/sun/mail/imap/IMAPMessage;


# direct methods
.method constructor <init>(Lcom/sun/mail/imap/IMAPMessage;Lcom/sun/mail/imap/protocol/BODYSTRUCTURE;Lcom/sun/mail/imap/protocol/ENVELOPE;Ljava/lang/String;)V
    .locals 1
    .param p1, "m"    # Lcom/sun/mail/imap/IMAPMessage;
    .param p2, "b"    # Lcom/sun/mail/imap/protocol/BODYSTRUCTURE;
    .param p3, "e"    # Lcom/sun/mail/imap/protocol/ENVELOPE;
    .param p4, "sid"    # Ljava/lang/String;

    .prologue
    .line 50
    invoke-virtual {p1}, Lcom/sun/mail/imap/IMAPMessage;->_getSession()Ljavax/mail/Session;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/sun/mail/imap/IMAPMessage;-><init>(Ljavax/mail/Session;)V

    .line 51
    iput-object p1, p0, Lcom/sun/mail/imap/IMAPNestedMessage;->msg:Lcom/sun/mail/imap/IMAPMessage;

    .line 52
    iput-object p2, p0, Lcom/sun/mail/imap/IMAPNestedMessage;->bs:Lcom/sun/mail/imap/protocol/BODYSTRUCTURE;

    .line 53
    iput-object p3, p0, Lcom/sun/mail/imap/IMAPNestedMessage;->envelope:Lcom/sun/mail/imap/protocol/ENVELOPE;

    .line 54
    iput-object p4, p0, Lcom/sun/mail/imap/IMAPNestedMessage;->sectionId:Ljava/lang/String;

    .line 55
    return-void
.end method


# virtual methods
.method protected checkExpunged()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessageRemovedException;
        }
    .end annotation

    .prologue
    .line 86
    iget-object v0, p0, Lcom/sun/mail/imap/IMAPNestedMessage;->msg:Lcom/sun/mail/imap/IMAPMessage;

    invoke-virtual {v0}, Lcom/sun/mail/imap/IMAPMessage;->checkExpunged()V

    .line 87
    return-void
.end method

.method protected getFetchBlockSize()I
    .locals 1

    .prologue
    .line 101
    iget-object v0, p0, Lcom/sun/mail/imap/IMAPNestedMessage;->msg:Lcom/sun/mail/imap/IMAPMessage;

    invoke-virtual {v0}, Lcom/sun/mail/imap/IMAPMessage;->getFetchBlockSize()I

    move-result v0

    return v0
.end method

.method protected getMessageCacheLock()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 70
    iget-object v0, p0, Lcom/sun/mail/imap/IMAPNestedMessage;->msg:Lcom/sun/mail/imap/IMAPMessage;

    invoke-virtual {v0}, Lcom/sun/mail/imap/IMAPMessage;->getMessageCacheLock()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method protected getProtocol()Lcom/sun/mail/imap/protocol/IMAPProtocol;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/FolderClosedException;
        }
    .end annotation

    .prologue
    .line 62
    iget-object v0, p0, Lcom/sun/mail/imap/IMAPNestedMessage;->msg:Lcom/sun/mail/imap/IMAPMessage;

    invoke-virtual {v0}, Lcom/sun/mail/imap/IMAPMessage;->getProtocol()Lcom/sun/mail/imap/protocol/IMAPProtocol;

    move-result-object v0

    return-object v0
.end method

.method protected getSequenceNumber()I
    .locals 1

    .prologue
    .line 78
    iget-object v0, p0, Lcom/sun/mail/imap/IMAPNestedMessage;->msg:Lcom/sun/mail/imap/IMAPMessage;

    invoke-virtual {v0}, Lcom/sun/mail/imap/IMAPMessage;->getSequenceNumber()I

    move-result v0

    return v0
.end method

.method public getSize()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 109
    iget-object v0, p0, Lcom/sun/mail/imap/IMAPNestedMessage;->bs:Lcom/sun/mail/imap/protocol/BODYSTRUCTURE;

    iget v0, v0, Lcom/sun/mail/imap/protocol/BODYSTRUCTURE;->size:I

    return v0
.end method

.method public isExpunged()Z
    .locals 1

    .prologue
    .line 94
    iget-object v0, p0, Lcom/sun/mail/imap/IMAPNestedMessage;->msg:Lcom/sun/mail/imap/IMAPMessage;

    invoke-virtual {v0}, Lcom/sun/mail/imap/IMAPMessage;->isExpunged()Z

    move-result v0

    return v0
.end method

.method public declared-synchronized setFlags(Ljavax/mail/Flags;Z)V
    .locals 2
    .param p1, "flag"    # Ljavax/mail/Flags;
    .param p2, "set"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 118
    monitor-enter p0

    :try_start_0
    new-instance v0, Ljavax/mail/MethodNotSupportedException;

    const-string v1, "Cannot set flags on this nested message"

    invoke-direct {v0, v1}, Ljavax/mail/MethodNotSupportedException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
