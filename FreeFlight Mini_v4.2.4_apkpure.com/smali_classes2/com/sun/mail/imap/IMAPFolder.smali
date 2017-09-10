.class public Lcom/sun/mail/imap/IMAPFolder;
.super Ljavax/mail/Folder;
.source "IMAPFolder.java"

# interfaces
.implements Ljavax/mail/UIDFolder;
.implements Lcom/sun/mail/iap/ResponseHandler;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sun/mail/imap/IMAPFolder$ProtocolCommand;,
        Lcom/sun/mail/imap/IMAPFolder$FetchProfileItem;
    }
.end annotation


# static fields
.field protected static final UNKNOWN_SEPARATOR:C = '\uffff'

.field static class$javax$mail$Flags:Ljava/lang/Class;


# instance fields
.field protected attributes:[Ljava/lang/String;

.field protected availableFlags:Ljavax/mail/Flags;

.field private cachedStatus:Lcom/sun/mail/imap/protocol/Status;

.field private cachedStatusTime:J

.field private connectionPoolDebug:Z

.field private debug:Z

.field private doExpungeNotification:Z

.field protected exists:Z

.field protected fullName:Ljava/lang/String;

.field protected isNamespace:Z

.field protected messageCache:Ljava/util/Vector;

.field protected messageCacheLock:Ljava/lang/Object;

.field protected name:Ljava/lang/String;

.field private opened:Z

.field private out:Ljava/io/PrintStream;

.field protected permanentFlags:Ljavax/mail/Flags;

.field protected protocol:Lcom/sun/mail/imap/protocol/IMAPProtocol;

.field private realTotal:I

.field private reallyClosed:Z

.field private recent:I

.field protected separator:C

.field private total:I

.field protected type:I

.field protected uidTable:Ljava/util/Hashtable;

.field private uidnext:I

.field private uidvalidity:I


# direct methods
.method protected constructor <init>(Lcom/sun/mail/imap/protocol/ListInfo;Lcom/sun/mail/imap/IMAPStore;)V
    .locals 2
    .param p1, "li"    # Lcom/sun/mail/imap/protocol/ListInfo;
    .param p2, "store"    # Lcom/sun/mail/imap/IMAPStore;

    .prologue
    .line 284
    iget-object v0, p1, Lcom/sun/mail/imap/protocol/ListInfo;->name:Ljava/lang/String;

    iget-char v1, p1, Lcom/sun/mail/imap/protocol/ListInfo;->separator:C

    invoke-direct {p0, v0, v1, p2}, Lcom/sun/mail/imap/IMAPFolder;-><init>(Ljava/lang/String;CLcom/sun/mail/imap/IMAPStore;)V

    .line 286
    iget-boolean v0, p1, Lcom/sun/mail/imap/protocol/ListInfo;->hasInferiors:Z

    if-eqz v0, :cond_0

    .line 287
    iget v0, p0, Lcom/sun/mail/imap/IMAPFolder;->type:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/sun/mail/imap/IMAPFolder;->type:I

    .line 288
    :cond_0
    iget-boolean v0, p1, Lcom/sun/mail/imap/protocol/ListInfo;->canOpen:Z

    if-eqz v0, :cond_1

    .line 289
    iget v0, p0, Lcom/sun/mail/imap/IMAPFolder;->type:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/sun/mail/imap/IMAPFolder;->type:I

    .line 290
    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sun/mail/imap/IMAPFolder;->exists:Z

    .line 291
    iget-object v0, p1, Lcom/sun/mail/imap/protocol/ListInfo;->attrs:[Ljava/lang/String;

    iput-object v0, p0, Lcom/sun/mail/imap/IMAPFolder;->attributes:[Ljava/lang/String;

    .line 292
    return-void
.end method

.method protected constructor <init>(Ljava/lang/String;CLcom/sun/mail/imap/IMAPStore;)V
    .locals 1
    .param p1, "fullName"    # Ljava/lang/String;
    .param p2, "separator"    # C
    .param p3, "store"    # Lcom/sun/mail/imap/IMAPStore;

    .prologue
    .line 253
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/sun/mail/imap/IMAPFolder;-><init>(Ljava/lang/String;CLcom/sun/mail/imap/IMAPStore;Z)V

    .line 254
    return-void
.end method

.method protected constructor <init>(Ljava/lang/String;CLcom/sun/mail/imap/IMAPStore;Z)V
    .locals 3
    .param p1, "fullName"    # Ljava/lang/String;
    .param p2, "separator"    # C
    .param p3, "store"    # Lcom/sun/mail/imap/IMAPStore;
    .param p4, "isNamespace"    # Z

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v0, -0x1

    .line 266
    invoke-direct {p0, p3}, Ljavax/mail/Folder;-><init>(Ljavax/mail/Store;)V

    .line 153
    iput-boolean v2, p0, Lcom/sun/mail/imap/IMAPFolder;->exists:Z

    .line 154
    iput-boolean v2, p0, Lcom/sun/mail/imap/IMAPFolder;->isNamespace:Z

    .line 171
    iput-boolean v2, p0, Lcom/sun/mail/imap/IMAPFolder;->opened:Z

    .line 183
    iput-boolean v1, p0, Lcom/sun/mail/imap/IMAPFolder;->reallyClosed:Z

    .line 185
    iput v0, p0, Lcom/sun/mail/imap/IMAPFolder;->total:I

    .line 187
    iput v0, p0, Lcom/sun/mail/imap/IMAPFolder;->recent:I

    .line 188
    iput v0, p0, Lcom/sun/mail/imap/IMAPFolder;->realTotal:I

    .line 190
    iput v0, p0, Lcom/sun/mail/imap/IMAPFolder;->uidvalidity:I

    .line 191
    iput v0, p0, Lcom/sun/mail/imap/IMAPFolder;->uidnext:I

    .line 192
    iput-boolean v1, p0, Lcom/sun/mail/imap/IMAPFolder;->doExpungeNotification:Z

    .line 194
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sun/mail/imap/IMAPFolder;->cachedStatus:Lcom/sun/mail/imap/protocol/Status;

    .line 195
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/sun/mail/imap/IMAPFolder;->cachedStatusTime:J

    .line 197
    iput-boolean v2, p0, Lcom/sun/mail/imap/IMAPFolder;->debug:Z

    .line 267
    if-nez p1, :cond_0

    .line 268
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Folder name is null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 269
    :cond_0
    iput-object p1, p0, Lcom/sun/mail/imap/IMAPFolder;->fullName:Ljava/lang/String;

    .line 270
    iput-char p2, p0, Lcom/sun/mail/imap/IMAPFolder;->separator:C

    .line 271
    iput-boolean p4, p0, Lcom/sun/mail/imap/IMAPFolder;->isNamespace:Z

    .line 272
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/sun/mail/imap/IMAPFolder;->messageCacheLock:Ljava/lang/Object;

    .line 273
    invoke-virtual {p3}, Lcom/sun/mail/imap/IMAPStore;->getSession()Ljavax/mail/Session;

    move-result-object v0

    invoke-virtual {v0}, Ljavax/mail/Session;->getDebug()Z

    move-result v0

    iput-boolean v0, p0, Lcom/sun/mail/imap/IMAPFolder;->debug:Z

    .line 274
    invoke-virtual {p3}, Lcom/sun/mail/imap/IMAPStore;->getConnectionPoolDebug()Z

    move-result v0

    iput-boolean v0, p0, Lcom/sun/mail/imap/IMAPFolder;->connectionPoolDebug:Z

    .line 275
    invoke-virtual {p3}, Lcom/sun/mail/imap/IMAPStore;->getSession()Ljavax/mail/Session;

    move-result-object v0

    invoke-virtual {v0}, Ljavax/mail/Session;->getDebugOut()Ljava/io/PrintStream;

    move-result-object v0

    iput-object v0, p0, Lcom/sun/mail/imap/IMAPFolder;->out:Ljava/io/PrintStream;

    .line 276
    iget-object v0, p0, Lcom/sun/mail/imap/IMAPFolder;->out:Ljava/io/PrintStream;

    if-nez v0, :cond_1

    .line 277
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    iput-object v0, p0, Lcom/sun/mail/imap/IMAPFolder;->out:Ljava/io/PrintStream;

    .line 278
    :cond_1
    return-void
.end method

.method static access$000(Lcom/sun/mail/imap/IMAPFolder;)Lcom/sun/mail/imap/protocol/Status;
    .locals 1
    .param p0, "x0"    # Lcom/sun/mail/imap/IMAPFolder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/mail/iap/ProtocolException;
        }
    .end annotation

    .prologue
    .line 145
    invoke-direct {p0}, Lcom/sun/mail/imap/IMAPFolder;->getStatus()Lcom/sun/mail/imap/protocol/Status;

    move-result-object v0

    return-object v0
.end method

.method private checkClosed()V
    .locals 2

    .prologue
    .line 311
    iget-boolean v0, p0, Lcom/sun/mail/imap/IMAPFolder;->opened:Z

    if-eqz v0, :cond_0

    .line 312
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "This operation is not allowed on an open folder"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 315
    :cond_0
    return-void
.end method

.method private checkExists()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 301
    iget-boolean v0, p0, Lcom/sun/mail/imap/IMAPFolder;->exists:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/sun/mail/imap/IMAPFolder;->exists()Z

    move-result v0

    if-nez v0, :cond_0

    .line 302
    new-instance v0, Ljavax/mail/FolderNotFoundException;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    iget-object v2, p0, Lcom/sun/mail/imap/IMAPFolder;->fullName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, " not found"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Ljavax/mail/FolderNotFoundException;-><init>(Ljavax/mail/Folder;Ljava/lang/String;)V

    throw v0

    .line 304
    :cond_0
    return-void
.end method

.method private checkFlags(Ljavax/mail/Flags;)V
    .locals 3
    .param p1, "flags"    # Ljavax/mail/Flags;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 368
    iget v0, p0, Lcom/sun/mail/imap/IMAPFolder;->mode:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    .line 369
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "Cannot change flags on READ_ONLY folder: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-object v2, p0, Lcom/sun/mail/imap/IMAPFolder;->fullName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 372
    :cond_0
    iget-object v0, p0, Lcom/sun/mail/imap/IMAPFolder;->availableFlags:Ljavax/mail/Flags;

    invoke-virtual {v0, p1}, Ljavax/mail/Flags;->contains(Ljavax/mail/Flags;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 373
    new-instance v0, Ljavax/mail/MessagingException;

    const-string v1, "These flags are not supported by this implementation"

    invoke-direct {v0, v1}, Ljavax/mail/MessagingException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 376
    :cond_1
    return-void
.end method

.method private checkOpened()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/FolderClosedException;
        }
    .end annotation

    .prologue
    .line 322
    iget-boolean v0, p0, Lcom/sun/mail/imap/IMAPFolder;->opened:Z

    if-nez v0, :cond_1

    .line 323
    iget-boolean v0, p0, Lcom/sun/mail/imap/IMAPFolder;->reallyClosed:Z

    if-eqz v0, :cond_0

    .line 324
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "This operation is not allowed on a closed folder"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 328
    :cond_0
    new-instance v0, Ljavax/mail/FolderClosedException;

    const-string v1, "Lost folder connection to server"

    invoke-direct {v0, p0, v1}, Ljavax/mail/FolderClosedException;-><init>(Ljavax/mail/Folder;Ljava/lang/String;)V

    throw v0

    .line 332
    :cond_1
    return-void
.end method

.method private checkRange(I)V
    .locals 5
    .param p1, "msgno"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 340
    const/4 v2, 0x1

    if-ge p1, v2, :cond_0

    .line 341
    new-instance v2, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v2}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v2

    .line 343
    :cond_0
    iget v2, p0, Lcom/sun/mail/imap/IMAPFolder;->total:I

    if-gt p1, v2, :cond_2

    .line 362
    :cond_1
    return-void

    .line 349
    :cond_2
    iget-object v3, p0, Lcom/sun/mail/imap/IMAPFolder;->messageCacheLock:Ljava/lang/Object;

    monitor-enter v3

    .line 351
    const/4 v2, 0x0

    :try_start_0
    invoke-direct {p0, v2}, Lcom/sun/mail/imap/IMAPFolder;->keepConnectionAlive(Z)V
    :try_end_0
    .catch Lcom/sun/mail/iap/ConnectionException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/sun/mail/iap/ProtocolException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 358
    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 360
    iget v2, p0, Lcom/sun/mail/imap/IMAPFolder;->total:I

    if-le p1, v2, :cond_1

    .line 361
    new-instance v2, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v2}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v2

    .line 352
    :catch_0
    move-exception v0

    .line 354
    .local v0, "cex":Lcom/sun/mail/iap/ConnectionException;
    :try_start_2
    new-instance v2, Ljavax/mail/FolderClosedException;

    invoke-virtual {v0}, Lcom/sun/mail/iap/ConnectionException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, p0, v4}, Ljavax/mail/FolderClosedException;-><init>(Ljavax/mail/Folder;Ljava/lang/String;)V

    throw v2

    .line 358
    .end local v0    # "cex":Lcom/sun/mail/iap/ConnectionException;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v2

    .line 355
    :catch_1
    move-exception v1

    .line 356
    .local v1, "pex":Lcom/sun/mail/iap/ProtocolException;
    :try_start_3
    new-instance v2, Ljavax/mail/MessagingException;

    invoke-virtual {v1}, Lcom/sun/mail/iap/ProtocolException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v4, v1}, Ljavax/mail/MessagingException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
.end method

.method static class$(Ljava/lang/String;)Ljava/lang/Class;
    .locals 2
    .param p0, "x0"    # Ljava/lang/String;

    .prologue
    .line 2137
    :try_start_0
    invoke-static {p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    :catch_0
    move-exception v0

    .local v0, "x1":Ljava/lang/ClassNotFoundException;
    new-instance v1, Ljava/lang/NoClassDefFoundError;

    invoke-direct {v1}, Ljava/lang/NoClassDefFoundError;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/NoClassDefFoundError;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object v1

    throw v1
.end method

.method private cleanup(Z)V
    .locals 2
    .param p1, "returnToPool"    # Z

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 1018
    invoke-direct {p0, p1}, Lcom/sun/mail/imap/IMAPFolder;->releaseProtocol(Z)V

    .line 1019
    iput-object v0, p0, Lcom/sun/mail/imap/IMAPFolder;->protocol:Lcom/sun/mail/imap/protocol/IMAPProtocol;

    .line 1020
    iput-object v0, p0, Lcom/sun/mail/imap/IMAPFolder;->messageCache:Ljava/util/Vector;

    .line 1021
    iput-object v0, p0, Lcom/sun/mail/imap/IMAPFolder;->uidTable:Ljava/util/Hashtable;

    .line 1022
    iput-boolean v1, p0, Lcom/sun/mail/imap/IMAPFolder;->exists:Z

    .line 1023
    iput-boolean v1, p0, Lcom/sun/mail/imap/IMAPFolder;->opened:Z

    .line 1024
    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lcom/sun/mail/imap/IMAPFolder;->notifyConnectionListeners(I)V

    .line 1025
    return-void
.end method

.method private close(ZZ)V
    .locals 6
    .param p1, "expunge"    # Z
    .param p2, "force"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 947
    iget-object v3, p0, Lcom/sun/mail/imap/IMAPFolder;->messageCacheLock:Ljava/lang/Object;

    monitor-enter v3

    .line 954
    :try_start_0
    iget-boolean v2, p0, Lcom/sun/mail/imap/IMAPFolder;->opened:Z

    if-nez v2, :cond_0

    iget-boolean v2, p0, Lcom/sun/mail/imap/IMAPFolder;->reallyClosed:Z

    if-eqz v2, :cond_0

    .line 955
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v4, "This operation is not allowed on a closed folder"

    invoke-direct {v2, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1009
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 959
    :cond_0
    const/4 v2, 0x1

    :try_start_1
    iput-boolean v2, p0, Lcom/sun/mail/imap/IMAPFolder;->reallyClosed:Z

    .line 965
    iget-boolean v2, p0, Lcom/sun/mail/imap/IMAPFolder;->opened:Z

    if-nez v2, :cond_1

    .line 966
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1010
    :goto_0
    return-void

    .line 969
    :cond_1
    if-eqz p2, :cond_5

    .line 970
    :try_start_2
    iget-boolean v2, p0, Lcom/sun/mail/imap/IMAPFolder;->debug:Z

    if-eqz v2, :cond_2

    .line 971
    iget-object v2, p0, Lcom/sun/mail/imap/IMAPFolder;->out:Ljava/io/PrintStream;

    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    const-string v5, "DEBUG: forcing folder "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    iget-object v5, p0, Lcom/sun/mail/imap/IMAPFolder;->fullName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    const-string v5, " to close"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 973
    :cond_2
    iget-object v2, p0, Lcom/sun/mail/imap/IMAPFolder;->protocol:Lcom/sun/mail/imap/protocol/IMAPProtocol;

    if-eqz v2, :cond_3

    .line 974
    iget-object v2, p0, Lcom/sun/mail/imap/IMAPFolder;->protocol:Lcom/sun/mail/imap/protocol/IMAPProtocol;

    invoke-virtual {v2}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->disconnect()V
    :try_end_2
    .catch Lcom/sun/mail/iap/ProtocolException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 1006
    :cond_3
    :goto_1
    :try_start_3
    iget-boolean v2, p0, Lcom/sun/mail/imap/IMAPFolder;->opened:Z

    if-eqz v2, :cond_4

    .line 1007
    const/4 v2, 0x1

    invoke-direct {p0, v2}, Lcom/sun/mail/imap/IMAPFolder;->cleanup(Z)V

    .line 1009
    :cond_4
    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 975
    :cond_5
    :try_start_4
    iget-object v2, p0, Lcom/sun/mail/imap/IMAPFolder;->store:Ljavax/mail/Store;

    check-cast v2, Lcom/sun/mail/imap/IMAPStore;

    invoke-virtual {v2}, Lcom/sun/mail/imap/IMAPStore;->isConnectionPoolFull()Z

    move-result v2

    if-eqz v2, :cond_9

    .line 977
    iget-boolean v2, p0, Lcom/sun/mail/imap/IMAPFolder;->debug:Z

    if-eqz v2, :cond_6

    .line 978
    iget-object v2, p0, Lcom/sun/mail/imap/IMAPFolder;->out:Ljava/io/PrintStream;

    const-string v4, "DEBUG: pool is full, not adding an Authenticated connection"

    invoke-virtual {v2, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 982
    :cond_6
    if-eqz p1, :cond_7

    .line 983
    iget-object v2, p0, Lcom/sun/mail/imap/IMAPFolder;->protocol:Lcom/sun/mail/imap/protocol/IMAPProtocol;

    invoke-virtual {v2}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->close()V

    .line 985
    :cond_7
    iget-object v2, p0, Lcom/sun/mail/imap/IMAPFolder;->protocol:Lcom/sun/mail/imap/protocol/IMAPProtocol;

    if-eqz v2, :cond_3

    .line 986
    iget-object v2, p0, Lcom/sun/mail/imap/IMAPFolder;->protocol:Lcom/sun/mail/imap/protocol/IMAPProtocol;

    invoke-virtual {v2}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->logout()V
    :try_end_4
    .catch Lcom/sun/mail/iap/ProtocolException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto :goto_1

    .line 1002
    :catch_0
    move-exception v0

    .line 1003
    .local v0, "pex":Lcom/sun/mail/iap/ProtocolException;
    :try_start_5
    new-instance v2, Ljavax/mail/MessagingException;

    invoke-virtual {v0}, Lcom/sun/mail/iap/ProtocolException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v4, v0}, Ljavax/mail/MessagingException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 1006
    .end local v0    # "pex":Lcom/sun/mail/iap/ProtocolException;
    :catchall_1
    move-exception v2

    :try_start_6
    iget-boolean v4, p0, Lcom/sun/mail/imap/IMAPFolder;->opened:Z

    if-eqz v4, :cond_8

    .line 1007
    const/4 v4, 0x1

    invoke-direct {p0, v4}, Lcom/sun/mail/imap/IMAPFolder;->cleanup(Z)V

    .line 1008
    :cond_8
    throw v2
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 991
    :cond_9
    if-nez p1, :cond_a

    :try_start_7
    iget v2, p0, Lcom/sun/mail/imap/IMAPFolder;->mode:I
    :try_end_7
    .catch Lcom/sun/mail/iap/ProtocolException; {:try_start_7 .. :try_end_7} :catch_0
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    const/4 v4, 0x2

    if-ne v2, v4, :cond_a

    .line 993
    :try_start_8
    iget-object v2, p0, Lcom/sun/mail/imap/IMAPFolder;->protocol:Lcom/sun/mail/imap/protocol/IMAPProtocol;

    iget-object v4, p0, Lcom/sun/mail/imap/IMAPFolder;->fullName:Ljava/lang/String;

    invoke-virtual {v2, v4}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->examine(Ljava/lang/String;)Lcom/sun/mail/imap/protocol/MailboxInfo;
    :try_end_8
    .catch Lcom/sun/mail/iap/ProtocolException; {:try_start_8 .. :try_end_8} :catch_1
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    .line 999
    :cond_a
    :goto_2
    :try_start_9
    iget-object v2, p0, Lcom/sun/mail/imap/IMAPFolder;->protocol:Lcom/sun/mail/imap/protocol/IMAPProtocol;

    if-eqz v2, :cond_3

    .line 1000
    iget-object v2, p0, Lcom/sun/mail/imap/IMAPFolder;->protocol:Lcom/sun/mail/imap/protocol/IMAPProtocol;

    invoke-virtual {v2}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->close()V

    goto :goto_1

    .line 994
    :catch_1
    move-exception v1

    .line 995
    .local v1, "pex2":Lcom/sun/mail/iap/ProtocolException;
    iget-object v2, p0, Lcom/sun/mail/imap/IMAPFolder;->protocol:Lcom/sun/mail/imap/protocol/IMAPProtocol;

    if-eqz v2, :cond_a

    .line 996
    iget-object v2, p0, Lcom/sun/mail/imap/IMAPFolder;->protocol:Lcom/sun/mail/imap/protocol/IMAPProtocol;

    invoke-virtual {v2}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->disconnect()V
    :try_end_9
    .catch Lcom/sun/mail/iap/ProtocolException; {:try_start_9 .. :try_end_9} :catch_0
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    goto :goto_2
.end method

.method private doList(Ljava/lang/String;Z)[Ljavax/mail/Folder;
    .locals 9
    .param p1, "pattern"    # Ljava/lang/String;
    .param p2, "subscribed"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    .line 492
    invoke-direct {p0}, Lcom/sun/mail/imap/IMAPFolder;->checkExists()V

    .line 494
    invoke-direct {p0}, Lcom/sun/mail/imap/IMAPFolder;->isDirectory()Z

    move-result v5

    if-nez v5, :cond_1

    .line 495
    new-array v1, v6, [Ljavax/mail/Folder;

    .line 532
    :cond_0
    :goto_0
    return-object v1

    .line 497
    :cond_1
    invoke-virtual {p0}, Lcom/sun/mail/imap/IMAPFolder;->getSeparator()C

    move-result v0

    .line 499
    .local v0, "c":C
    new-instance v5, Lcom/sun/mail/imap/IMAPFolder$2;

    invoke-direct {v5, p0, p2, v0, p1}, Lcom/sun/mail/imap/IMAPFolder$2;-><init>(Lcom/sun/mail/imap/IMAPFolder;ZCLjava/lang/String;)V

    invoke-virtual {p0, v5}, Lcom/sun/mail/imap/IMAPFolder;->doCommandIgnoreFailure(Lcom/sun/mail/imap/IMAPFolder$ProtocolCommand;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Lcom/sun/mail/imap/protocol/ListInfo;

    move-object v3, v5

    check-cast v3, [Lcom/sun/mail/imap/protocol/ListInfo;

    .line 510
    .local v3, "li":[Lcom/sun/mail/imap/protocol/ListInfo;
    if-nez v3, :cond_2

    .line 511
    new-array v1, v6, [Ljavax/mail/Folder;

    goto :goto_0

    .line 524
    :cond_2
    const/4 v4, 0x0

    .line 526
    .local v4, "start":I
    array-length v5, v3

    if-lez v5, :cond_3

    aget-object v5, v3, v6

    iget-object v5, v5, Lcom/sun/mail/imap/protocol/ListInfo;->name:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuffer;

    invoke-direct {v6}, Ljava/lang/StringBuffer;-><init>()V

    iget-object v7, p0, Lcom/sun/mail/imap/IMAPFolder;->fullName:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 527
    const/4 v4, 0x1

    .line 529
    :cond_3
    array-length v5, v3

    sub-int/2addr v5, v4

    new-array v1, v5, [Lcom/sun/mail/imap/IMAPFolder;

    .line 530
    .local v1, "folders":[Lcom/sun/mail/imap/IMAPFolder;
    move v2, v4

    .local v2, "i":I
    :goto_1
    array-length v5, v3

    if-ge v2, v5, :cond_0

    .line 531
    sub-int v6, v2, v4

    new-instance v7, Lcom/sun/mail/imap/IMAPFolder;

    aget-object v8, v3, v2

    iget-object v5, p0, Lcom/sun/mail/imap/IMAPFolder;->store:Ljavax/mail/Store;

    check-cast v5, Lcom/sun/mail/imap/IMAPStore;

    invoke-direct {v7, v8, v5}, Lcom/sun/mail/imap/IMAPFolder;-><init>(Lcom/sun/mail/imap/protocol/ListInfo;Lcom/sun/mail/imap/IMAPStore;)V

    aput-object v7, v1, v6

    .line 530
    add-int/lit8 v2, v2, 0x1

    goto :goto_1
.end method

.method private findName([Lcom/sun/mail/imap/protocol/ListInfo;Ljava/lang/String;)I
    .locals 2
    .param p1, "li"    # [Lcom/sun/mail/imap/protocol/ListInfo;
    .param p2, "lname"    # Ljava/lang/String;

    .prologue
    .line 463
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_0

    .line 464
    aget-object v1, p1, v0

    iget-object v1, v1, Lcom/sun/mail/imap/protocol/ListInfo;->name:Ljava/lang/String;

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 467
    :cond_0
    array-length v1, p1

    if-lt v0, v1, :cond_1

    .line 471
    const/4 v0, 0x0

    .line 473
    :cond_1
    return v0

    .line 463
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private getStatus()Lcom/sun/mail/imap/protocol/Status;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/mail/iap/ProtocolException;
        }
    .end annotation

    .prologue
    .line 1222
    iget-object v3, p0, Lcom/sun/mail/imap/IMAPFolder;->store:Ljavax/mail/Store;

    check-cast v3, Lcom/sun/mail/imap/IMAPStore;

    invoke-virtual {v3}, Lcom/sun/mail/imap/IMAPStore;->getStatusCacheTimeout()I

    move-result v2

    .line 1225
    .local v2, "statusCacheTimeout":I
    if-lez v2, :cond_0

    iget-object v3, p0, Lcom/sun/mail/imap/IMAPFolder;->cachedStatus:Lcom/sun/mail/imap/protocol/Status;

    if-eqz v3, :cond_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iget-wide v6, p0, Lcom/sun/mail/imap/IMAPFolder;->cachedStatusTime:J

    sub-long/2addr v4, v6

    int-to-long v6, v2

    cmp-long v3, v4, v6

    if-gez v3, :cond_0

    .line 1227
    iget-object v1, p0, Lcom/sun/mail/imap/IMAPFolder;->cachedStatus:Lcom/sun/mail/imap/protocol/Status;

    .line 1242
    :goto_0
    return-object v1

    .line 1229
    :cond_0
    const/4 v0, 0x0

    .line 1232
    .local v0, "p":Lcom/sun/mail/imap/protocol/IMAPProtocol;
    :try_start_0
    invoke-virtual {p0}, Lcom/sun/mail/imap/IMAPFolder;->getStoreProtocol()Lcom/sun/mail/imap/protocol/IMAPProtocol;

    move-result-object v0

    .line 1233
    iget-object v3, p0, Lcom/sun/mail/imap/IMAPFolder;->fullName:Ljava/lang/String;

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v4}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->status(Ljava/lang/String;[Ljava/lang/String;)Lcom/sun/mail/imap/protocol/Status;

    move-result-object v1

    .line 1235
    .local v1, "s":Lcom/sun/mail/imap/protocol/Status;
    if-lez v2, :cond_1

    .line 1236
    iput-object v1, p0, Lcom/sun/mail/imap/IMAPFolder;->cachedStatus:Lcom/sun/mail/imap/protocol/Status;

    .line 1237
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/sun/mail/imap/IMAPFolder;->cachedStatusTime:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1241
    :cond_1
    invoke-virtual {p0, v0}, Lcom/sun/mail/imap/IMAPFolder;->releaseStoreProtocol(Lcom/sun/mail/imap/protocol/IMAPProtocol;)V

    goto :goto_0

    .end local v1    # "s":Lcom/sun/mail/imap/protocol/Status;
    :catchall_0
    move-exception v3

    invoke-virtual {p0, v0}, Lcom/sun/mail/imap/IMAPFolder;->releaseStoreProtocol(Lcom/sun/mail/imap/protocol/IMAPProtocol;)V

    .line 1242
    throw v3
.end method

.method private isDirectory()Z
    .locals 1

    .prologue
    .line 2464
    iget v0, p0, Lcom/sun/mail/imap/IMAPFolder;->type:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private keepConnectionAlive(Z)V
    .locals 8
    .param p1, "keepStoreAlive"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/mail/iap/ProtocolException;
        }
    .end annotation

    .prologue
    const-wide/16 v6, 0x3e8

    .line 2428
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-object v1, p0, Lcom/sun/mail/imap/IMAPFolder;->protocol:Lcom/sun/mail/imap/protocol/IMAPProtocol;

    invoke-virtual {v1}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->getTimestamp()J

    move-result-wide v4

    sub-long/2addr v2, v4

    cmp-long v1, v2, v6

    if-lez v1, :cond_0

    .line 2429
    iget-object v1, p0, Lcom/sun/mail/imap/IMAPFolder;->protocol:Lcom/sun/mail/imap/protocol/IMAPProtocol;

    invoke-virtual {v1}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->noop()V

    .line 2431
    :cond_0
    if-eqz p1, :cond_2

    iget-object v1, p0, Lcom/sun/mail/imap/IMAPFolder;->store:Ljavax/mail/Store;

    check-cast v1, Lcom/sun/mail/imap/IMAPStore;

    invoke-virtual {v1}, Lcom/sun/mail/imap/IMAPStore;->hasSeparateStoreConnection()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 2432
    const/4 v0, 0x0

    .line 2434
    .local v0, "p":Lcom/sun/mail/imap/protocol/IMAPProtocol;
    :try_start_0
    iget-object v1, p0, Lcom/sun/mail/imap/IMAPFolder;->store:Ljavax/mail/Store;

    check-cast v1, Lcom/sun/mail/imap/IMAPStore;

    invoke-virtual {v1}, Lcom/sun/mail/imap/IMAPStore;->getStoreProtocol()Lcom/sun/mail/imap/protocol/IMAPProtocol;

    move-result-object v0

    .line 2435
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v0}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->getTimestamp()J

    move-result-wide v4

    sub-long/2addr v2, v4

    cmp-long v1, v2, v6

    if-lez v1, :cond_1

    .line 2436
    invoke-virtual {v0}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->noop()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2438
    :cond_1
    iget-object v1, p0, Lcom/sun/mail/imap/IMAPFolder;->store:Ljavax/mail/Store;

    check-cast v1, Lcom/sun/mail/imap/IMAPStore;

    invoke-virtual {v1, v0}, Lcom/sun/mail/imap/IMAPStore;->releaseStoreProtocol(Lcom/sun/mail/imap/protocol/IMAPProtocol;)V

    .line 2441
    .end local v0    # "p":Lcom/sun/mail/imap/protocol/IMAPProtocol;
    :cond_2
    return-void

    .line 2438
    .restart local v0    # "p":Lcom/sun/mail/imap/protocol/IMAPProtocol;
    :catchall_0
    move-exception v1

    move-object v2, v1

    iget-object v1, p0, Lcom/sun/mail/imap/IMAPFolder;->store:Ljavax/mail/Store;

    check-cast v1, Lcom/sun/mail/imap/IMAPStore;

    invoke-virtual {v1, v0}, Lcom/sun/mail/imap/IMAPStore;->releaseStoreProtocol(Lcom/sun/mail/imap/protocol/IMAPProtocol;)V

    .line 2439
    throw v2
.end method

.method private releaseProtocol(Z)V
    .locals 2
    .param p1, "returnToPool"    # Z

    .prologue
    .line 2410
    iget-object v0, p0, Lcom/sun/mail/imap/IMAPFolder;->protocol:Lcom/sun/mail/imap/protocol/IMAPProtocol;

    if-eqz v0, :cond_0

    .line 2411
    iget-object v0, p0, Lcom/sun/mail/imap/IMAPFolder;->protocol:Lcom/sun/mail/imap/protocol/IMAPProtocol;

    invoke-virtual {v0, p0}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->removeResponseHandler(Lcom/sun/mail/iap/ResponseHandler;)V

    .line 2413
    if-eqz p1, :cond_1

    .line 2414
    iget-object v0, p0, Lcom/sun/mail/imap/IMAPFolder;->store:Ljavax/mail/Store;

    check-cast v0, Lcom/sun/mail/imap/IMAPStore;

    iget-object v1, p0, Lcom/sun/mail/imap/IMAPFolder;->protocol:Lcom/sun/mail/imap/protocol/IMAPProtocol;

    invoke-virtual {v0, p0, v1}, Lcom/sun/mail/imap/IMAPStore;->releaseProtocol(Lcom/sun/mail/imap/IMAPFolder;Lcom/sun/mail/imap/protocol/IMAPProtocol;)V

    .line 2418
    :cond_0
    :goto_0
    return-void

    .line 2416
    :cond_1
    iget-object v0, p0, Lcom/sun/mail/imap/IMAPFolder;->store:Ljavax/mail/Store;

    check-cast v0, Lcom/sun/mail/imap/IMAPStore;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Lcom/sun/mail/imap/IMAPStore;->releaseProtocol(Lcom/sun/mail/imap/IMAPFolder;Lcom/sun/mail/imap/protocol/IMAPProtocol;)V

    goto :goto_0
.end method

.method private setACL(Lcom/sun/mail/imap/ACL;C)V
    .locals 2
    .param p1, "acl"    # Lcom/sun/mail/imap/ACL;
    .param p2, "mod"    # C
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 2016
    const-string v0, "ACL not supported"

    new-instance v1, Lcom/sun/mail/imap/IMAPFolder$18;

    invoke-direct {v1, p0, p2, p1}, Lcom/sun/mail/imap/IMAPFolder$18;-><init>(Lcom/sun/mail/imap/IMAPFolder;CLcom/sun/mail/imap/ACL;)V

    invoke-virtual {p0, v0, v1}, Lcom/sun/mail/imap/IMAPFolder;->doOptionalCommand(Ljava/lang/String;Lcom/sun/mail/imap/IMAPFolder$ProtocolCommand;)Ljava/lang/Object;

    .line 2024
    return-void
.end method

.method private declared-synchronized throwClosedException(Lcom/sun/mail/iap/ConnectionException;)V
    .locals 3
    .param p1, "cex"    # Lcom/sun/mail/iap/ConnectionException;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/FolderClosedException;,
            Ljavax/mail/StoreClosedException;
        }
    .end annotation

    .prologue
    .line 2204
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/sun/mail/imap/IMAPFolder;->protocol:Lcom/sun/mail/imap/protocol/IMAPProtocol;

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/sun/mail/iap/ConnectionException;->getProtocol()Lcom/sun/mail/iap/Protocol;

    move-result-object v0

    iget-object v1, p0, Lcom/sun/mail/imap/IMAPFolder;->protocol:Lcom/sun/mail/imap/protocol/IMAPProtocol;

    if-eq v0, v1, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/sun/mail/imap/IMAPFolder;->protocol:Lcom/sun/mail/imap/protocol/IMAPProtocol;

    if-nez v0, :cond_2

    iget-boolean v0, p0, Lcom/sun/mail/imap/IMAPFolder;->reallyClosed:Z

    if-nez v0, :cond_2

    .line 2206
    :cond_1
    new-instance v0, Ljavax/mail/FolderClosedException;

    invoke-virtual {p1}, Lcom/sun/mail/iap/ConnectionException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Ljavax/mail/FolderClosedException;-><init>(Ljavax/mail/Folder;Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2204
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 2208
    :cond_2
    :try_start_1
    new-instance v0, Ljavax/mail/StoreClosedException;

    iget-object v1, p0, Lcom/sun/mail/imap/IMAPFolder;->store:Ljavax/mail/Store;

    invoke-virtual {p1}, Lcom/sun/mail/iap/ConnectionException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljavax/mail/StoreClosedException;-><init>(Ljavax/mail/Store;Ljava/lang/String;)V

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
.end method


# virtual methods
.method public addACL(Lcom/sun/mail/imap/ACL;)V
    .locals 1
    .param p1, "acl"    # Lcom/sun/mail/imap/ACL;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 1921
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/sun/mail/imap/IMAPFolder;->setACL(Lcom/sun/mail/imap/ACL;C)V

    .line 1922
    return-void
.end method

.method public addMessages([Ljavax/mail/Message;)[Ljavax/mail/Message;
    .locals 8
    .param p1, "msgs"    # [Ljavax/mail/Message;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 1370
    invoke-direct {p0}, Lcom/sun/mail/imap/IMAPFolder;->checkOpened()V

    .line 1371
    array-length v4, p1

    new-array v2, v4, [Ljavax/mail/internet/MimeMessage;

    .line 1372
    .local v2, "rmsgs":[Ljavax/mail/Message;
    invoke-virtual {p0, p1}, Lcom/sun/mail/imap/IMAPFolder;->appendUIDMessages([Ljavax/mail/Message;)[Lcom/sun/mail/imap/AppendUID;

    move-result-object v3

    .line 1373
    .local v3, "uids":[Lcom/sun/mail/imap/AppendUID;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v4, v3

    if-ge v1, v4, :cond_1

    .line 1374
    aget-object v0, v3, v1

    .line 1375
    .local v0, "auid":Lcom/sun/mail/imap/AppendUID;
    if-eqz v0, :cond_0

    .line 1376
    iget-wide v4, v0, Lcom/sun/mail/imap/AppendUID;->uidvalidity:J

    iget v6, p0, Lcom/sun/mail/imap/IMAPFolder;->uidvalidity:I

    int-to-long v6, v6

    cmp-long v4, v4, v6

    if-nez v4, :cond_0

    .line 1378
    :try_start_0
    iget-wide v4, v0, Lcom/sun/mail/imap/AppendUID;->uid:J

    invoke-virtual {p0, v4, v5}, Lcom/sun/mail/imap/IMAPFolder;->getMessageByUID(J)Ljavax/mail/Message;

    move-result-object v4

    aput-object v4, v2, v1
    :try_end_0
    .catch Ljavax/mail/MessagingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1373
    :cond_0
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1385
    .end local v0    # "auid":Lcom/sun/mail/imap/AppendUID;
    :cond_1
    return-object v2

    .line 1379
    .restart local v0    # "auid":Lcom/sun/mail/imap/AppendUID;
    :catch_0
    move-exception v4

    goto :goto_1
.end method

.method public addRights(Lcom/sun/mail/imap/ACL;)V
    .locals 1
    .param p1, "acl"    # Lcom/sun/mail/imap/ACL;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 1953
    const/16 v0, 0x2b

    invoke-direct {p0, p1, v0}, Lcom/sun/mail/imap/IMAPFolder;->setACL(Lcom/sun/mail/imap/ACL;C)V

    .line 1954
    return-void
.end method

.method public appendMessages([Ljavax/mail/Message;)V
    .locals 11
    .param p1, "msgs"    # [Ljavax/mail/Message;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 1260
    invoke-direct {p0}, Lcom/sun/mail/imap/IMAPFolder;->checkExists()V

    .line 1267
    iget-object v9, p0, Lcom/sun/mail/imap/IMAPFolder;->store:Ljavax/mail/Store;

    check-cast v9, Lcom/sun/mail/imap/IMAPStore;

    invoke-virtual {v9}, Lcom/sun/mail/imap/IMAPStore;->getAppendBufferSize()I

    move-result v6

    .line 1269
    .local v6, "maxsize":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    array-length v9, p1

    if-ge v4, v9, :cond_2

    .line 1270
    aget-object v5, p1, v4

    .line 1275
    .local v5, "m":Ljavax/mail/Message;
    :try_start_0
    new-instance v7, Lcom/sun/mail/imap/MessageLiteral;

    invoke-virtual {v5}, Ljavax/mail/Message;->getSize()I

    move-result v9

    if-le v9, v6, :cond_1

    const/4 v9, 0x0

    :goto_1
    invoke-direct {v7, v5, v9}, Lcom/sun/mail/imap/MessageLiteral;-><init>(Ljavax/mail/Message;I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljavax/mail/MessageRemovedException; {:try_start_0 .. :try_end_0} :catch_1

    .line 1284
    .local v7, "mos":Lcom/sun/mail/imap/MessageLiteral;
    invoke-virtual {v5}, Ljavax/mail/Message;->getReceivedDate()Ljava/util/Date;

    move-result-object v0

    .line 1285
    .local v0, "d":Ljava/util/Date;
    if-nez v0, :cond_0

    .line 1286
    invoke-virtual {v5}, Ljavax/mail/Message;->getSentDate()Ljava/util/Date;

    move-result-object v0

    .line 1287
    :cond_0
    move-object v1, v0

    .line 1288
    .local v1, "dd":Ljava/util/Date;
    invoke-virtual {v5}, Ljavax/mail/Message;->getFlags()Ljavax/mail/Flags;

    move-result-object v3

    .line 1289
    .local v3, "f":Ljavax/mail/Flags;
    new-instance v9, Lcom/sun/mail/imap/IMAPFolder$10;

    invoke-direct {v9, p0, v3, v1, v7}, Lcom/sun/mail/imap/IMAPFolder$10;-><init>(Lcom/sun/mail/imap/IMAPFolder;Ljavax/mail/Flags;Ljava/util/Date;Lcom/sun/mail/imap/MessageLiteral;)V

    invoke-virtual {p0, v9}, Lcom/sun/mail/imap/IMAPFolder;->doCommand(Lcom/sun/mail/imap/IMAPFolder$ProtocolCommand;)Ljava/lang/Object;

    .line 1269
    .end local v0    # "d":Ljava/util/Date;
    .end local v1    # "dd":Ljava/util/Date;
    .end local v3    # "f":Ljavax/mail/Flags;
    .end local v7    # "mos":Lcom/sun/mail/imap/MessageLiteral;
    :goto_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    move v9, v6

    .line 1275
    goto :goto_1

    .line 1277
    :catch_0
    move-exception v2

    .line 1278
    .local v2, "ex":Ljava/io/IOException;
    new-instance v9, Ljavax/mail/MessagingException;

    const-string v10, "IOException while appending messages"

    invoke-direct {v9, v10, v2}, Ljavax/mail/MessagingException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v9

    .line 1280
    .end local v2    # "ex":Ljava/io/IOException;
    :catch_1
    move-exception v8

    .line 1281
    .local v8, "mrex":Ljavax/mail/MessageRemovedException;
    goto :goto_2

    .line 1297
    .end local v5    # "m":Ljavax/mail/Message;
    .end local v8    # "mrex":Ljavax/mail/MessageRemovedException;
    :cond_2
    return-void
.end method

.method public appendUIDMessages([Ljavax/mail/Message;)[Lcom/sun/mail/imap/AppendUID;
    .locals 13
    .param p1, "msgs"    # [Ljavax/mail/Message;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 1314
    invoke-direct {p0}, Lcom/sun/mail/imap/IMAPFolder;->checkExists()V

    .line 1321
    iget-object v11, p0, Lcom/sun/mail/imap/IMAPFolder;->store:Ljavax/mail/Store;

    check-cast v11, Lcom/sun/mail/imap/IMAPStore;

    invoke-virtual {v11}, Lcom/sun/mail/imap/IMAPStore;->getAppendBufferSize()I

    move-result v7

    .line 1323
    .local v7, "maxsize":I
    array-length v11, p1

    new-array v10, v11, [Lcom/sun/mail/imap/AppendUID;

    .line 1324
    .local v10, "uids":[Lcom/sun/mail/imap/AppendUID;
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_0
    array-length v11, p1

    if-ge v5, v11, :cond_2

    .line 1325
    aget-object v6, p1, v5

    .line 1330
    .local v6, "m":Ljavax/mail/Message;
    :try_start_0
    new-instance v8, Lcom/sun/mail/imap/MessageLiteral;

    invoke-virtual {v6}, Ljavax/mail/Message;->getSize()I

    move-result v11

    if-le v11, v7, :cond_1

    const/4 v11, 0x0

    :goto_1
    invoke-direct {v8, v6, v11}, Lcom/sun/mail/imap/MessageLiteral;-><init>(Ljavax/mail/Message;I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljavax/mail/MessageRemovedException; {:try_start_0 .. :try_end_0} :catch_1

    .line 1339
    .local v8, "mos":Lcom/sun/mail/imap/MessageLiteral;
    invoke-virtual {v6}, Ljavax/mail/Message;->getReceivedDate()Ljava/util/Date;

    move-result-object v1

    .line 1340
    .local v1, "d":Ljava/util/Date;
    if-nez v1, :cond_0

    .line 1341
    invoke-virtual {v6}, Ljavax/mail/Message;->getSentDate()Ljava/util/Date;

    move-result-object v1

    .line 1342
    :cond_0
    move-object v2, v1

    .line 1343
    .local v2, "dd":Ljava/util/Date;
    invoke-virtual {v6}, Ljavax/mail/Message;->getFlags()Ljavax/mail/Flags;

    move-result-object v4

    .line 1344
    .local v4, "f":Ljavax/mail/Flags;
    new-instance v11, Lcom/sun/mail/imap/IMAPFolder$11;

    invoke-direct {v11, p0, v4, v2, v8}, Lcom/sun/mail/imap/IMAPFolder$11;-><init>(Lcom/sun/mail/imap/IMAPFolder;Ljavax/mail/Flags;Ljava/util/Date;Lcom/sun/mail/imap/MessageLiteral;)V

    invoke-virtual {p0, v11}, Lcom/sun/mail/imap/IMAPFolder;->doCommand(Lcom/sun/mail/imap/IMAPFolder$ProtocolCommand;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sun/mail/imap/AppendUID;

    .line 1350
    .local v0, "auid":Lcom/sun/mail/imap/AppendUID;
    aput-object v0, v10, v5

    .line 1324
    .end local v0    # "auid":Lcom/sun/mail/imap/AppendUID;
    .end local v1    # "d":Ljava/util/Date;
    .end local v2    # "dd":Ljava/util/Date;
    .end local v4    # "f":Ljavax/mail/Flags;
    .end local v8    # "mos":Lcom/sun/mail/imap/MessageLiteral;
    :goto_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_1
    move v11, v7

    .line 1330
    goto :goto_1

    .line 1332
    :catch_0
    move-exception v3

    .line 1333
    .local v3, "ex":Ljava/io/IOException;
    new-instance v11, Ljavax/mail/MessagingException;

    const-string v12, "IOException while appending messages"

    invoke-direct {v11, v12, v3}, Ljavax/mail/MessagingException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v11

    .line 1335
    .end local v3    # "ex":Ljava/io/IOException;
    :catch_1
    move-exception v9

    .line 1336
    .local v9, "mrex":Ljavax/mail/MessageRemovedException;
    goto :goto_2

    .line 1352
    .end local v6    # "m":Ljavax/mail/Message;
    .end local v9    # "mrex":Ljavax/mail/MessageRemovedException;
    :cond_2
    return-object v10
.end method

.method public declared-synchronized close(Z)V
    .locals 1
    .param p1, "expunge"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 935
    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    invoke-direct {p0, p1, v0}, Lcom/sun/mail/imap/IMAPFolder;->close(ZZ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 936
    monitor-exit p0

    return-void

    .line 935
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized copyMessages([Ljavax/mail/Message;Ljavax/mail/Folder;)V
    .locals 8
    .param p1, "msgs"    # [Ljavax/mail/Message;
    .param p2, "folder"    # Ljavax/mail/Folder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 1394
    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/sun/mail/imap/IMAPFolder;->checkOpened()V

    .line 1396
    array-length v4, p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-nez v4, :cond_0

    .line 1424
    :goto_0
    monitor-exit p0

    return-void

    .line 1400
    :cond_0
    :try_start_1
    invoke-virtual {p2}, Ljavax/mail/Folder;->getStore()Ljavax/mail/Store;

    move-result-object v4

    iget-object v5, p0, Lcom/sun/mail/imap/IMAPFolder;->store:Ljavax/mail/Store;

    if-ne v4, v5, :cond_3

    .line 1401
    iget-object v5, p0, Lcom/sun/mail/imap/IMAPFolder;->messageCacheLock:Ljava/lang/Object;

    monitor-enter v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 1403
    const/4 v4, 0x0

    :try_start_2
    invoke-static {p1, v4}, Lcom/sun/mail/imap/Utility;->toMessageSet([Ljavax/mail/Message;Lcom/sun/mail/imap/Utility$Condition;)[Lcom/sun/mail/imap/protocol/MessageSet;

    move-result-object v2

    .line 1404
    .local v2, "ms":[Lcom/sun/mail/imap/protocol/MessageSet;
    if-nez v2, :cond_1

    .line 1405
    new-instance v4, Ljavax/mail/MessageRemovedException;

    const-string v6, "Messages have been removed"

    invoke-direct {v4, v6}, Ljavax/mail/MessageRemovedException;-><init>(Ljava/lang/String;)V

    throw v4
    :try_end_2
    .catch Lcom/sun/mail/iap/CommandFailedException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Lcom/sun/mail/iap/ConnectionException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Lcom/sun/mail/iap/ProtocolException; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1408
    .end local v2    # "ms":[Lcom/sun/mail/imap/protocol/MessageSet;
    :catch_0
    move-exception v1

    .line 1409
    .local v1, "cfx":Lcom/sun/mail/iap/CommandFailedException;
    :try_start_3
    invoke-virtual {v1}, Lcom/sun/mail/iap/CommandFailedException;->getMessage()Ljava/lang/String;

    move-result-object v4

    const-string v6, "TRYCREATE"

    invoke-virtual {v4, v6}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    const/4 v6, -0x1

    if-eq v4, v6, :cond_2

    .line 1410
    new-instance v4, Ljavax/mail/FolderNotFoundException;

    new-instance v6, Ljava/lang/StringBuffer;

    invoke-direct {v6}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {p2}, Ljavax/mail/Folder;->getFullName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    const-string v7, " does not exist"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, p2, v6}, Ljavax/mail/FolderNotFoundException;-><init>(Ljavax/mail/Folder;Ljava/lang/String;)V

    throw v4

    .line 1421
    .end local v1    # "cfx":Lcom/sun/mail/iap/CommandFailedException;
    :catchall_0
    move-exception v4

    monitor-exit v5
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v4
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 1394
    :catchall_1
    move-exception v4

    monitor-exit p0

    throw v4

    .line 1407
    .restart local v2    # "ms":[Lcom/sun/mail/imap/protocol/MessageSet;
    :cond_1
    :try_start_5
    iget-object v4, p0, Lcom/sun/mail/imap/IMAPFolder;->protocol:Lcom/sun/mail/imap/protocol/IMAPProtocol;

    invoke-virtual {p2}, Ljavax/mail/Folder;->getFullName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v2, v6}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->copy([Lcom/sun/mail/imap/protocol/MessageSet;Ljava/lang/String;)V
    :try_end_5
    .catch Lcom/sun/mail/iap/CommandFailedException; {:try_start_5 .. :try_end_5} :catch_0
    .catch Lcom/sun/mail/iap/ConnectionException; {:try_start_5 .. :try_end_5} :catch_1
    .catch Lcom/sun/mail/iap/ProtocolException; {:try_start_5 .. :try_end_5} :catch_2
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 1421
    :try_start_6
    monitor-exit v5

    goto :goto_0

    .line 1415
    .end local v2    # "ms":[Lcom/sun/mail/imap/protocol/MessageSet;
    .restart local v1    # "cfx":Lcom/sun/mail/iap/CommandFailedException;
    :cond_2
    new-instance v4, Ljavax/mail/MessagingException;

    invoke-virtual {v1}, Lcom/sun/mail/iap/CommandFailedException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v6, v1}, Ljavax/mail/MessagingException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v4

    .line 1416
    .end local v1    # "cfx":Lcom/sun/mail/iap/CommandFailedException;
    :catch_1
    move-exception v0

    .line 1417
    .local v0, "cex":Lcom/sun/mail/iap/ConnectionException;
    new-instance v4, Ljavax/mail/FolderClosedException;

    invoke-virtual {v0}, Lcom/sun/mail/iap/ConnectionException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, p0, v6}, Ljavax/mail/FolderClosedException;-><init>(Ljavax/mail/Folder;Ljava/lang/String;)V

    throw v4

    .line 1418
    .end local v0    # "cex":Lcom/sun/mail/iap/ConnectionException;
    :catch_2
    move-exception v3

    .line 1419
    .local v3, "pex":Lcom/sun/mail/iap/ProtocolException;
    new-instance v4, Ljavax/mail/MessagingException;

    invoke-virtual {v3}, Lcom/sun/mail/iap/ProtocolException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v6, v3}, Ljavax/mail/MessagingException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v4
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 1423
    .end local v3    # "pex":Lcom/sun/mail/iap/ProtocolException;
    :cond_3
    :try_start_7
    invoke-super {p0, p1, p2}, Ljavax/mail/Folder;->copyMessages([Ljavax/mail/Message;Ljavax/mail/Folder;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    goto :goto_0
.end method

.method public declared-synchronized create(I)Z
    .locals 5
    .param p1, "type"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 621
    monitor-enter p0

    const/4 v0, 0x0

    .line 622
    .local v0, "c":C
    and-int/lit8 v4, p1, 0x1

    if-nez v4, :cond_0

    .line 623
    :try_start_0
    invoke-virtual {p0}, Lcom/sun/mail/imap/IMAPFolder;->getSeparator()C

    move-result v0

    .line 624
    :cond_0
    move v3, v0

    .line 625
    .local v3, "sep":C
    new-instance v4, Lcom/sun/mail/imap/IMAPFolder$6;

    invoke-direct {v4, p0, p1, v3}, Lcom/sun/mail/imap/IMAPFolder$6;-><init>(Lcom/sun/mail/imap/IMAPFolder;IC)V

    invoke-virtual {p0, v4}, Lcom/sun/mail/imap/IMAPFolder;->doCommandIgnoreFailure(Lcom/sun/mail/imap/IMAPFolder$ProtocolCommand;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .line 653
    .local v1, "ret":Ljava/lang/Object;
    if-nez v1, :cond_1

    .line 654
    const/4 v2, 0x0

    .line 662
    :goto_0
    monitor-exit p0

    return v2

    .line 659
    :cond_1
    :try_start_1
    invoke-virtual {p0}, Lcom/sun/mail/imap/IMAPFolder;->exists()Z

    move-result v2

    .line 661
    .local v2, "retb":Z
    const/4 v4, 0x1

    invoke-virtual {p0, v4}, Lcom/sun/mail/imap/IMAPFolder;->notifyFolderListeners(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 621
    .end local v1    # "ret":Ljava/lang/Object;
    .end local v2    # "retb":Z
    .end local v3    # "sep":C
    :catchall_0
    move-exception v4

    monitor-exit p0

    throw v4
.end method

.method public declared-synchronized delete(Z)Z
    .locals 5
    .param p1, "recurse"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 731
    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/sun/mail/imap/IMAPFolder;->checkClosed()V

    .line 733
    if-eqz p1, :cond_0

    .line 735
    invoke-virtual {p0}, Lcom/sun/mail/imap/IMAPFolder;->list()[Ljavax/mail/Folder;

    move-result-object v0

    .line 736
    .local v0, "f":[Ljavax/mail/Folder;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v4, v0

    if-ge v1, v4, :cond_0

    .line 737
    aget-object v4, v0, v1

    invoke-virtual {v4, p1}, Ljavax/mail/Folder;->delete(Z)Z

    .line 736
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 742
    .end local v0    # "f":[Ljavax/mail/Folder;
    .end local v1    # "i":I
    :cond_0
    new-instance v4, Lcom/sun/mail/imap/IMAPFolder$8;

    invoke-direct {v4, p0}, Lcom/sun/mail/imap/IMAPFolder$8;-><init>(Lcom/sun/mail/imap/IMAPFolder;)V

    invoke-virtual {p0, v4}, Lcom/sun/mail/imap/IMAPFolder;->doCommandIgnoreFailure(Lcom/sun/mail/imap/IMAPFolder$ProtocolCommand;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    .line 749
    .local v2, "ret":Ljava/lang/Object;
    if-nez v2, :cond_1

    .line 758
    :goto_1
    monitor-exit p0

    return v3

    .line 754
    :cond_1
    const/4 v3, 0x0

    :try_start_1
    iput-boolean v3, p0, Lcom/sun/mail/imap/IMAPFolder;->exists:Z

    .line 757
    const/4 v3, 0x2

    invoke-virtual {p0, v3}, Lcom/sun/mail/imap/IMAPFolder;->notifyFolderListeners(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 758
    const/4 v3, 0x1

    goto :goto_1

    .line 731
    .end local v2    # "ret":Ljava/lang/Object;
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3
.end method

.method public doCommand(Lcom/sun/mail/imap/IMAPFolder$ProtocolCommand;)Ljava/lang/Object;
    .locals 4
    .param p1, "cmd"    # Lcom/sun/mail/imap/IMAPFolder$ProtocolCommand;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 2332
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/sun/mail/imap/IMAPFolder;->doProtocolCommand(Lcom/sun/mail/imap/IMAPFolder$ProtocolCommand;)Ljava/lang/Object;
    :try_end_0
    .catch Lcom/sun/mail/iap/ConnectionException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/sun/mail/iap/ProtocolException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v2

    .line 2339
    :goto_0
    return-object v2

    .line 2333
    :catch_0
    move-exception v0

    .line 2335
    .local v0, "cex":Lcom/sun/mail/iap/ConnectionException;
    invoke-direct {p0, v0}, Lcom/sun/mail/imap/IMAPFolder;->throwClosedException(Lcom/sun/mail/iap/ConnectionException;)V

    .line 2339
    const/4 v2, 0x0

    goto :goto_0

    .line 2336
    .end local v0    # "cex":Lcom/sun/mail/iap/ConnectionException;
    :catch_1
    move-exception v1

    .line 2337
    .local v1, "pex":Lcom/sun/mail/iap/ProtocolException;
    new-instance v2, Ljavax/mail/MessagingException;

    invoke-virtual {v1}, Lcom/sun/mail/iap/ProtocolException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, v1}, Ljavax/mail/MessagingException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v2
.end method

.method public doCommandIgnoreFailure(Lcom/sun/mail/imap/IMAPFolder$ProtocolCommand;)Ljava/lang/Object;
    .locals 5
    .param p1, "cmd"    # Lcom/sun/mail/imap/IMAPFolder$ProtocolCommand;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 2360
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/sun/mail/imap/IMAPFolder;->doProtocolCommand(Lcom/sun/mail/imap/IMAPFolder$ProtocolCommand;)Ljava/lang/Object;
    :try_end_0
    .catch Lcom/sun/mail/iap/CommandFailedException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/sun/mail/iap/ConnectionException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcom/sun/mail/iap/ProtocolException; {:try_start_0 .. :try_end_0} :catch_2

    move-result-object v3

    .line 2369
    :goto_0
    return-object v3

    .line 2361
    :catch_0
    move-exception v1

    .line 2362
    .local v1, "cfx":Lcom/sun/mail/iap/CommandFailedException;
    goto :goto_0

    .line 2363
    .end local v1    # "cfx":Lcom/sun/mail/iap/CommandFailedException;
    :catch_1
    move-exception v0

    .line 2365
    .local v0, "cex":Lcom/sun/mail/iap/ConnectionException;
    invoke-direct {p0, v0}, Lcom/sun/mail/imap/IMAPFolder;->throwClosedException(Lcom/sun/mail/iap/ConnectionException;)V

    goto :goto_0

    .line 2366
    .end local v0    # "cex":Lcom/sun/mail/iap/ConnectionException;
    :catch_2
    move-exception v2

    .line 2367
    .local v2, "pex":Lcom/sun/mail/iap/ProtocolException;
    new-instance v3, Ljavax/mail/MessagingException;

    invoke-virtual {v2}, Lcom/sun/mail/iap/ProtocolException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4, v2}, Ljavax/mail/MessagingException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v3
.end method

.method public doOptionalCommand(Ljava/lang/String;Lcom/sun/mail/imap/IMAPFolder$ProtocolCommand;)Ljava/lang/Object;
    .locals 5
    .param p1, "err"    # Ljava/lang/String;
    .param p2, "cmd"    # Lcom/sun/mail/imap/IMAPFolder$ProtocolCommand;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 2345
    :try_start_0
    invoke-virtual {p0, p2}, Lcom/sun/mail/imap/IMAPFolder;->doProtocolCommand(Lcom/sun/mail/imap/IMAPFolder$ProtocolCommand;)Ljava/lang/Object;
    :try_end_0
    .catch Lcom/sun/mail/iap/BadCommandException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/sun/mail/iap/ConnectionException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcom/sun/mail/iap/ProtocolException; {:try_start_0 .. :try_end_0} :catch_2

    move-result-object v3

    .line 2354
    :goto_0
    return-object v3

    .line 2346
    :catch_0
    move-exception v0

    .line 2347
    .local v0, "bex":Lcom/sun/mail/iap/BadCommandException;
    new-instance v3, Ljavax/mail/MessagingException;

    invoke-direct {v3, p1, v0}, Ljavax/mail/MessagingException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v3

    .line 2348
    .end local v0    # "bex":Lcom/sun/mail/iap/BadCommandException;
    :catch_1
    move-exception v1

    .line 2350
    .local v1, "cex":Lcom/sun/mail/iap/ConnectionException;
    invoke-direct {p0, v1}, Lcom/sun/mail/imap/IMAPFolder;->throwClosedException(Lcom/sun/mail/iap/ConnectionException;)V

    .line 2354
    const/4 v3, 0x0

    goto :goto_0

    .line 2351
    .end local v1    # "cex":Lcom/sun/mail/iap/ConnectionException;
    :catch_2
    move-exception v2

    .line 2352
    .local v2, "pex":Lcom/sun/mail/iap/ProtocolException;
    new-instance v3, Ljavax/mail/MessagingException;

    invoke-virtual {v2}, Lcom/sun/mail/iap/ProtocolException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4, v2}, Ljavax/mail/MessagingException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v3
.end method

.method protected doProtocolCommand(Lcom/sun/mail/imap/IMAPFolder$ProtocolCommand;)Ljava/lang/Object;
    .locals 3
    .param p1, "cmd"    # Lcom/sun/mail/imap/IMAPFolder$ProtocolCommand;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/mail/iap/ProtocolException;
        }
    .end annotation

    .prologue
    .line 2374
    monitor-enter p0

    .line 2375
    :try_start_0
    iget-boolean v1, p0, Lcom/sun/mail/imap/IMAPFolder;->opened:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sun/mail/imap/IMAPFolder;->store:Ljavax/mail/Store;

    check-cast v1, Lcom/sun/mail/imap/IMAPStore;

    invoke-virtual {v1}, Lcom/sun/mail/imap/IMAPStore;->hasSeparateStoreConnection()Z

    move-result v1

    if-nez v1, :cond_0

    .line 2376
    iget-object v2, p0, Lcom/sun/mail/imap/IMAPFolder;->messageCacheLock:Ljava/lang/Object;

    monitor-enter v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 2377
    :try_start_1
    invoke-virtual {p0}, Lcom/sun/mail/imap/IMAPFolder;->getProtocol()Lcom/sun/mail/imap/protocol/IMAPProtocol;

    move-result-object v1

    invoke-interface {p1, v1}, Lcom/sun/mail/imap/IMAPFolder$ProtocolCommand;->doCommand(Lcom/sun/mail/imap/protocol/IMAPProtocol;)Ljava/lang/Object;

    move-result-object v1

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 2390
    :goto_0
    return-object v1

    .line 2378
    :catchall_0
    move-exception v1

    :try_start_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v1

    .line 2380
    :catchall_1
    move-exception v1

    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v1

    :cond_0
    :try_start_5
    monitor-exit p0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 2383
    const/4 v0, 0x0

    .line 2386
    .local v0, "p":Lcom/sun/mail/imap/protocol/IMAPProtocol;
    :try_start_6
    invoke-virtual {p0}, Lcom/sun/mail/imap/IMAPFolder;->getStoreProtocol()Lcom/sun/mail/imap/protocol/IMAPProtocol;

    move-result-object v0

    .line 2387
    invoke-interface {p1, v0}, Lcom/sun/mail/imap/IMAPFolder$ProtocolCommand;->doCommand(Lcom/sun/mail/imap/protocol/IMAPProtocol;)Ljava/lang/Object;
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    move-result-object v1

    .line 2389
    invoke-virtual {p0, v0}, Lcom/sun/mail/imap/IMAPFolder;->releaseStoreProtocol(Lcom/sun/mail/imap/protocol/IMAPProtocol;)V

    goto :goto_0

    :catchall_2
    move-exception v1

    invoke-virtual {p0, v0}, Lcom/sun/mail/imap/IMAPFolder;->releaseStoreProtocol(Lcom/sun/mail/imap/protocol/IMAPProtocol;)V

    .line 2390
    throw v1
.end method

.method public exists()Z
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    .line 420
    const/4 v2, 0x0

    .line 422
    .local v2, "li":[Lcom/sun/mail/imap/protocol/ListInfo;
    iget-boolean v4, p0, Lcom/sun/mail/imap/IMAPFolder;->isNamespace:Z

    if-eqz v4, :cond_3

    iget-char v4, p0, Lcom/sun/mail/imap/IMAPFolder;->separator:C

    if-eqz v4, :cond_3

    .line 423
    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    iget-object v5, p0, Lcom/sun/mail/imap/IMAPFolder;->fullName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    iget-char v5, p0, Lcom/sun/mail/imap/IMAPFolder;->separator:C

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    .line 427
    .local v3, "lname":Ljava/lang/String;
    :goto_0
    new-instance v4, Lcom/sun/mail/imap/IMAPFolder$1;

    invoke-direct {v4, p0, v3}, Lcom/sun/mail/imap/IMAPFolder$1;-><init>(Lcom/sun/mail/imap/IMAPFolder;Ljava/lang/String;)V

    invoke-virtual {p0, v4}, Lcom/sun/mail/imap/IMAPFolder;->doCommand(Lcom/sun/mail/imap/IMAPFolder$ProtocolCommand;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Lcom/sun/mail/imap/protocol/ListInfo;

    move-object v2, v4

    check-cast v2, [Lcom/sun/mail/imap/protocol/ListInfo;

    .line 433
    if-eqz v2, :cond_4

    .line 434
    invoke-direct {p0, v2, v3}, Lcom/sun/mail/imap/IMAPFolder;->findName([Lcom/sun/mail/imap/protocol/ListInfo;Ljava/lang/String;)I

    move-result v0

    .line 435
    .local v0, "i":I
    aget-object v4, v2, v0

    iget-object v4, v4, Lcom/sun/mail/imap/protocol/ListInfo;->name:Ljava/lang/String;

    iput-object v4, p0, Lcom/sun/mail/imap/IMAPFolder;->fullName:Ljava/lang/String;

    .line 436
    aget-object v4, v2, v0

    iget-char v4, v4, Lcom/sun/mail/imap/protocol/ListInfo;->separator:C

    iput-char v4, p0, Lcom/sun/mail/imap/IMAPFolder;->separator:C

    .line 437
    iget-object v4, p0, Lcom/sun/mail/imap/IMAPFolder;->fullName:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v1

    .line 438
    .local v1, "len":I
    iget-char v4, p0, Lcom/sun/mail/imap/IMAPFolder;->separator:C

    if-eqz v4, :cond_0

    if-lez v1, :cond_0

    iget-object v4, p0, Lcom/sun/mail/imap/IMAPFolder;->fullName:Ljava/lang/String;

    add-int/lit8 v5, v1, -0x1

    invoke-virtual {v4, v5}, Ljava/lang/String;->charAt(I)C

    move-result v4

    iget-char v5, p0, Lcom/sun/mail/imap/IMAPFolder;->separator:C

    if-ne v4, v5, :cond_0

    .line 440
    iget-object v4, p0, Lcom/sun/mail/imap/IMAPFolder;->fullName:Ljava/lang/String;

    add-int/lit8 v5, v1, -0x1

    invoke-virtual {v4, v6, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/sun/mail/imap/IMAPFolder;->fullName:Ljava/lang/String;

    .line 442
    :cond_0
    iput v6, p0, Lcom/sun/mail/imap/IMAPFolder;->type:I

    .line 443
    aget-object v4, v2, v0

    iget-boolean v4, v4, Lcom/sun/mail/imap/protocol/ListInfo;->hasInferiors:Z

    if-eqz v4, :cond_1

    .line 444
    iget v4, p0, Lcom/sun/mail/imap/IMAPFolder;->type:I

    or-int/lit8 v4, v4, 0x2

    iput v4, p0, Lcom/sun/mail/imap/IMAPFolder;->type:I

    .line 445
    :cond_1
    aget-object v4, v2, v0

    iget-boolean v4, v4, Lcom/sun/mail/imap/protocol/ListInfo;->canOpen:Z

    if-eqz v4, :cond_2

    .line 446
    iget v4, p0, Lcom/sun/mail/imap/IMAPFolder;->type:I

    or-int/lit8 v4, v4, 0x1

    iput v4, p0, Lcom/sun/mail/imap/IMAPFolder;->type:I

    .line 447
    :cond_2
    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/sun/mail/imap/IMAPFolder;->exists:Z

    .line 448
    aget-object v4, v2, v0

    iget-object v4, v4, Lcom/sun/mail/imap/protocol/ListInfo;->attrs:[Ljava/lang/String;

    iput-object v4, p0, Lcom/sun/mail/imap/IMAPFolder;->attributes:[Ljava/lang/String;

    .line 452
    .end local v0    # "i":I
    .end local v1    # "len":I
    :goto_1
    iget-boolean v4, p0, Lcom/sun/mail/imap/IMAPFolder;->exists:Z

    return v4

    .line 425
    .end local v3    # "lname":Ljava/lang/String;
    :cond_3
    iget-object v3, p0, Lcom/sun/mail/imap/IMAPFolder;->fullName:Ljava/lang/String;

    .restart local v3    # "lname":Ljava/lang/String;
    goto :goto_0

    .line 450
    :cond_4
    iput-boolean v6, p0, Lcom/sun/mail/imap/IMAPFolder;->exists:Z

    goto :goto_1
.end method

.method public declared-synchronized expunge()[Ljavax/mail/Message;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 1430
    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p0, v0}, Lcom/sun/mail/imap/IMAPFolder;->expunge([Ljavax/mail/Message;)[Ljavax/mail/Message;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized expunge([Ljavax/mail/Message;)[Ljavax/mail/Message;
    .locals 14
    .param p1, "msgs"    # [Ljavax/mail/Message;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 1438
    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/sun/mail/imap/IMAPFolder;->checkOpened()V

    .line 1440
    new-instance v7, Ljava/util/Vector;

    invoke-direct {v7}, Ljava/util/Vector;-><init>()V

    .line 1442
    .local v7, "v":Ljava/util/Vector;
    if-eqz p1, :cond_0

    .line 1444
    new-instance v2, Ljavax/mail/FetchProfile;

    invoke-direct {v2}, Ljavax/mail/FetchProfile;-><init>()V

    .line 1445
    .local v2, "fp":Ljavax/mail/FetchProfile;
    sget-object v10, Ljavax/mail/UIDFolder$FetchProfileItem;->UID:Ljavax/mail/UIDFolder$FetchProfileItem;

    invoke-virtual {v2, v10}, Ljavax/mail/FetchProfile;->add(Ljavax/mail/FetchProfile$Item;)V

    .line 1446
    invoke-virtual {p0, p1, v2}, Lcom/sun/mail/imap/IMAPFolder;->fetch([Ljavax/mail/Message;Ljavax/mail/FetchProfile;)V

    .line 1449
    .end local v2    # "fp":Ljavax/mail/FetchProfile;
    :cond_0
    iget-object v11, p0, Lcom/sun/mail/imap/IMAPFolder;->messageCacheLock:Ljava/lang/Object;

    monitor-enter v11
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 1450
    const/4 v10, 0x0

    :try_start_1
    iput-boolean v10, p0, Lcom/sun/mail/imap/IMAPFolder;->doExpungeNotification:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1452
    if-eqz p1, :cond_2

    .line 1453
    :try_start_2
    iget-object v10, p0, Lcom/sun/mail/imap/IMAPFolder;->protocol:Lcom/sun/mail/imap/protocol/IMAPProtocol;

    invoke-static {p1}, Lcom/sun/mail/imap/Utility;->toUIDSet([Ljavax/mail/Message;)[Lcom/sun/mail/imap/protocol/UIDSet;

    move-result-object v12

    invoke-virtual {v10, v12}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->uidexpunge([Lcom/sun/mail/imap/protocol/UIDSet;)V
    :try_end_2
    .catch Lcom/sun/mail/iap/CommandFailedException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Lcom/sun/mail/iap/ConnectionException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Lcom/sun/mail/iap/ProtocolException; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 1469
    :goto_0
    const/4 v10, 0x1

    :try_start_3
    iput-boolean v10, p0, Lcom/sun/mail/imap/IMAPFolder;->doExpungeNotification:Z

    .line 1474
    const/4 v3, 0x0

    .local v3, "i":I
    :cond_1
    :goto_1
    iget-object v10, p0, Lcom/sun/mail/imap/IMAPFolder;->messageCache:Ljava/util/Vector;

    invoke-virtual {v10}, Ljava/util/Vector;->size()I

    move-result v10

    if-ge v3, v10, :cond_5

    .line 1475
    iget-object v10, p0, Lcom/sun/mail/imap/IMAPFolder;->messageCache:Ljava/util/Vector;

    invoke-virtual {v10, v3}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sun/mail/imap/IMAPMessage;

    .line 1476
    .local v4, "m":Lcom/sun/mail/imap/IMAPMessage;
    invoke-virtual {v4}, Lcom/sun/mail/imap/IMAPMessage;->isExpunged()Z

    move-result v10

    if-eqz v10, :cond_4

    .line 1477
    invoke-virtual {v7, v4}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 1487
    iget-object v10, p0, Lcom/sun/mail/imap/IMAPFolder;->messageCache:Ljava/util/Vector;

    invoke-virtual {v10, v3}, Ljava/util/Vector;->removeElementAt(I)V

    .line 1490
    iget-object v10, p0, Lcom/sun/mail/imap/IMAPFolder;->uidTable:Ljava/util/Hashtable;

    if-eqz v10, :cond_1

    .line 1491
    invoke-virtual {v4}, Lcom/sun/mail/imap/IMAPMessage;->getUID()J

    move-result-wide v8

    .line 1492
    .local v8, "uid":J
    const-wide/16 v12, -0x1

    cmp-long v10, v8, v12

    if-eqz v10, :cond_1

    .line 1493
    iget-object v10, p0, Lcom/sun/mail/imap/IMAPFolder;->uidTable:Ljava/util/Hashtable;

    new-instance v12, Ljava/lang/Long;

    invoke-direct {v12, v8, v9}, Ljava/lang/Long;-><init>(J)V

    invoke-virtual {v10, v12}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 1503
    .end local v3    # "i":I
    .end local v4    # "m":Lcom/sun/mail/imap/IMAPMessage;
    .end local v8    # "uid":J
    :catchall_0
    move-exception v10

    monitor-exit v11
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v10
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 1438
    .end local v7    # "v":Ljava/util/Vector;
    :catchall_1
    move-exception v10

    monitor-exit p0

    throw v10

    .line 1455
    .restart local v7    # "v":Ljava/util/Vector;
    :cond_2
    :try_start_5
    iget-object v10, p0, Lcom/sun/mail/imap/IMAPFolder;->protocol:Lcom/sun/mail/imap/protocol/IMAPProtocol;

    invoke-virtual {v10}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->expunge()V
    :try_end_5
    .catch Lcom/sun/mail/iap/CommandFailedException; {:try_start_5 .. :try_end_5} :catch_0
    .catch Lcom/sun/mail/iap/ConnectionException; {:try_start_5 .. :try_end_5} :catch_1
    .catch Lcom/sun/mail/iap/ProtocolException; {:try_start_5 .. :try_end_5} :catch_2
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    goto :goto_0

    .line 1456
    :catch_0
    move-exception v1

    .line 1458
    .local v1, "cfx":Lcom/sun/mail/iap/CommandFailedException;
    :try_start_6
    iget v10, p0, Lcom/sun/mail/imap/IMAPFolder;->mode:I

    const/4 v12, 0x2

    if-eq v10, v12, :cond_3

    .line 1459
    new-instance v10, Ljava/lang/IllegalStateException;

    new-instance v12, Ljava/lang/StringBuffer;

    invoke-direct {v12}, Ljava/lang/StringBuffer;-><init>()V

    const-string v13, "Cannot expunge READ_ONLY folder: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v12

    iget-object v13, p0, Lcom/sun/mail/imap/IMAPFolder;->fullName:Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-direct {v10, v12}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v10
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 1469
    .end local v1    # "cfx":Lcom/sun/mail/iap/CommandFailedException;
    :catchall_2
    move-exception v10

    const/4 v12, 0x1

    :try_start_7
    iput-boolean v12, p0, Lcom/sun/mail/imap/IMAPFolder;->doExpungeNotification:Z

    .line 1470
    throw v10
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 1462
    .restart local v1    # "cfx":Lcom/sun/mail/iap/CommandFailedException;
    :cond_3
    :try_start_8
    new-instance v10, Ljavax/mail/MessagingException;

    invoke-virtual {v1}, Lcom/sun/mail/iap/CommandFailedException;->getMessage()Ljava/lang/String;

    move-result-object v12

    invoke-direct {v10, v12, v1}, Ljavax/mail/MessagingException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v10

    .line 1463
    .end local v1    # "cfx":Lcom/sun/mail/iap/CommandFailedException;
    :catch_1
    move-exception v0

    .line 1464
    .local v0, "cex":Lcom/sun/mail/iap/ConnectionException;
    new-instance v10, Ljavax/mail/FolderClosedException;

    invoke-virtual {v0}, Lcom/sun/mail/iap/ConnectionException;->getMessage()Ljava/lang/String;

    move-result-object v12

    invoke-direct {v10, p0, v12}, Ljavax/mail/FolderClosedException;-><init>(Ljavax/mail/Folder;Ljava/lang/String;)V

    throw v10

    .line 1465
    .end local v0    # "cex":Lcom/sun/mail/iap/ConnectionException;
    :catch_2
    move-exception v5

    .line 1467
    .local v5, "pex":Lcom/sun/mail/iap/ProtocolException;
    new-instance v10, Ljavax/mail/MessagingException;

    invoke-virtual {v5}, Lcom/sun/mail/iap/ProtocolException;->getMessage()Ljava/lang/String;

    move-result-object v12

    invoke-direct {v10, v12, v5}, Ljavax/mail/MessagingException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v10
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    .line 1499
    .end local v5    # "pex":Lcom/sun/mail/iap/ProtocolException;
    .restart local v3    # "i":I
    .restart local v4    # "m":Lcom/sun/mail/imap/IMAPMessage;
    :cond_4
    :try_start_9
    invoke-virtual {v4}, Lcom/sun/mail/imap/IMAPMessage;->getSequenceNumber()I

    move-result v10

    invoke-virtual {v4, v10}, Lcom/sun/mail/imap/IMAPMessage;->setMessageNumber(I)V

    .line 1500
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_1

    .line 1503
    .end local v4    # "m":Lcom/sun/mail/imap/IMAPMessage;
    :cond_5
    monitor-exit v11
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    .line 1506
    :try_start_a
    iget-object v10, p0, Lcom/sun/mail/imap/IMAPFolder;->messageCache:Ljava/util/Vector;

    invoke-virtual {v10}, Ljava/util/Vector;->size()I

    move-result v10

    iput v10, p0, Lcom/sun/mail/imap/IMAPFolder;->total:I

    .line 1509
    invoke-virtual {v7}, Ljava/util/Vector;->size()I

    move-result v10

    new-array v6, v10, [Ljavax/mail/Message;

    .line 1510
    .local v6, "rmsgs":[Ljavax/mail/Message;
    invoke-virtual {v7, v6}, Ljava/util/Vector;->copyInto([Ljava/lang/Object;)V

    .line 1511
    array-length v10, v6

    if-lez v10, :cond_6

    .line 1512
    const/4 v10, 0x1

    invoke-virtual {p0, v10, v6}, Lcom/sun/mail/imap/IMAPFolder;->notifyMessageRemovedListeners(Z[Ljavax/mail/Message;)V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    .line 1513
    :cond_6
    monitor-exit p0

    return-object v6
.end method

.method public declared-synchronized fetch([Ljavax/mail/Message;Ljavax/mail/FetchProfile;)V
    .locals 1
    .param p1, "msgs"    # [Ljavax/mail/Message;
    .param p2, "fp"    # Ljavax/mail/FetchProfile;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 901
    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/sun/mail/imap/IMAPFolder;->checkOpened()V

    .line 902
    invoke-static {p0, p1, p2}, Lcom/sun/mail/imap/IMAPMessage;->fetch(Lcom/sun/mail/imap/IMAPFolder;[Ljavax/mail/Message;Ljavax/mail/FetchProfile;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 903
    monitor-exit p0

    return-void

    .line 901
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized forceClose()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 942
    monitor-enter p0

    const/4 v0, 0x0

    const/4 v1, 0x1

    :try_start_0
    invoke-direct {p0, v0, v1}, Lcom/sun/mail/imap/IMAPFolder;->close(ZZ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 943
    monitor-exit p0

    return-void

    .line 942
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getACL()[Lcom/sun/mail/imap/ACL;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 1903
    const-string v0, "ACL not supported"

    new-instance v1, Lcom/sun/mail/imap/IMAPFolder$14;

    invoke-direct {v1, p0}, Lcom/sun/mail/imap/IMAPFolder$14;-><init>(Lcom/sun/mail/imap/IMAPFolder;)V

    invoke-virtual {p0, v0, v1}, Lcom/sun/mail/imap/IMAPFolder;->doOptionalCommand(Ljava/lang/String;Lcom/sun/mail/imap/IMAPFolder$ProtocolCommand;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sun/mail/imap/ACL;

    check-cast v0, [Lcom/sun/mail/imap/ACL;

    return-object v0
.end method

.method public getAttributes()[Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 2033
    iget-object v0, p0, Lcom/sun/mail/imap/IMAPFolder;->attributes:[Ljava/lang/String;

    if-nez v0, :cond_0

    .line 2034
    invoke-virtual {p0}, Lcom/sun/mail/imap/IMAPFolder;->exists()Z

    .line 2035
    :cond_0
    iget-object v0, p0, Lcom/sun/mail/imap/IMAPFolder;->attributes:[Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    check-cast v0, [Ljava/lang/String;

    return-object v0
.end method

.method public declared-synchronized getDeletedMessageCount()I
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 1193
    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/sun/mail/imap/IMAPFolder;->checkExists()V

    .line 1194
    iget-boolean v4, p0, Lcom/sun/mail/imap/IMAPFolder;->opened:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-nez v4, :cond_0

    .line 1196
    const/4 v4, -0x1

    .line 1206
    :goto_0
    monitor-exit p0

    return v4

    .line 1201
    :cond_0
    :try_start_1
    new-instance v1, Ljavax/mail/Flags;

    invoke-direct {v1}, Ljavax/mail/Flags;-><init>()V

    .line 1202
    .local v1, "f":Ljavax/mail/Flags;
    sget-object v4, Ljavax/mail/Flags$Flag;->DELETED:Ljavax/mail/Flags$Flag;

    invoke-virtual {v1, v4}, Ljavax/mail/Flags;->add(Ljavax/mail/Flags$Flag;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 1204
    :try_start_2
    iget-object v5, p0, Lcom/sun/mail/imap/IMAPFolder;->messageCacheLock:Ljava/lang/Object;

    monitor-enter v5
    :try_end_2
    .catch Lcom/sun/mail/iap/ConnectionException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Lcom/sun/mail/iap/ProtocolException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 1205
    :try_start_3
    iget-object v4, p0, Lcom/sun/mail/imap/IMAPFolder;->protocol:Lcom/sun/mail/imap/protocol/IMAPProtocol;

    new-instance v6, Ljavax/mail/search/FlagTerm;

    const/4 v7, 0x1

    invoke-direct {v6, v1, v7}, Ljavax/mail/search/FlagTerm;-><init>(Ljavax/mail/Flags;Z)V

    invoke-virtual {v4, v6}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->search(Ljavax/mail/search/SearchTerm;)[I

    move-result-object v2

    .line 1206
    .local v2, "matches":[I
    array-length v4, v2

    monitor-exit v5

    goto :goto_0

    .line 1207
    .end local v2    # "matches":[I
    :catchall_0
    move-exception v4

    monitor-exit v5
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v4
    :try_end_4
    .catch Lcom/sun/mail/iap/ConnectionException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Lcom/sun/mail/iap/ProtocolException; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 1208
    :catch_0
    move-exception v0

    .line 1209
    .local v0, "cex":Lcom/sun/mail/iap/ConnectionException;
    :try_start_5
    new-instance v4, Ljavax/mail/FolderClosedException;

    invoke-virtual {v0}, Lcom/sun/mail/iap/ConnectionException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, p0, v5}, Ljavax/mail/FolderClosedException;-><init>(Ljavax/mail/Folder;Ljava/lang/String;)V

    throw v4
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 1193
    .end local v0    # "cex":Lcom/sun/mail/iap/ConnectionException;
    .end local v1    # "f":Ljavax/mail/Flags;
    :catchall_1
    move-exception v4

    monitor-exit p0

    throw v4

    .line 1210
    .restart local v1    # "f":Ljavax/mail/Flags;
    :catch_1
    move-exception v3

    .line 1212
    .local v3, "pex":Lcom/sun/mail/iap/ProtocolException;
    :try_start_6
    new-instance v4, Ljavax/mail/MessagingException;

    invoke-virtual {v3}, Lcom/sun/mail/iap/ProtocolException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5, v3}, Ljavax/mail/MessagingException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v4
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1
.end method

.method public getFolder(Ljava/lang/String;)Ljavax/mail/Folder;
    .locals 4
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 719
    iget-boolean v1, p0, Lcom/sun/mail/imap/IMAPFolder;->exists:Z

    if-eqz v1, :cond_0

    invoke-direct {p0}, Lcom/sun/mail/imap/IMAPFolder;->isDirectory()Z

    move-result v1

    if-nez v1, :cond_0

    .line 720
    new-instance v1, Ljavax/mail/MessagingException;

    const-string v2, "Cannot contain subfolders"

    invoke-direct {v1, v2}, Ljavax/mail/MessagingException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 722
    :cond_0
    invoke-virtual {p0}, Lcom/sun/mail/imap/IMAPFolder;->getSeparator()C

    move-result v0

    .line 723
    .local v0, "c":C
    new-instance v2, Lcom/sun/mail/imap/IMAPFolder;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    iget-object v3, p0, Lcom/sun/mail/imap/IMAPFolder;->fullName:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    iget-object v1, p0, Lcom/sun/mail/imap/IMAPFolder;->store:Ljavax/mail/Store;

    check-cast v1, Lcom/sun/mail/imap/IMAPStore;

    invoke-direct {v2, v3, v0, v1}, Lcom/sun/mail/imap/IMAPFolder;-><init>(Ljava/lang/String;CLcom/sun/mail/imap/IMAPStore;)V

    return-object v2
.end method

.method public getFullName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 399
    iget-object v0, p0, Lcom/sun/mail/imap/IMAPFolder;->fullName:Ljava/lang/String;

    return-object v0
.end method

.method public declared-synchronized getMessage(I)Ljavax/mail/Message;
    .locals 2
    .param p1, "msgnum"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 1250
    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/sun/mail/imap/IMAPFolder;->checkOpened()V

    .line 1251
    invoke-direct {p0, p1}, Lcom/sun/mail/imap/IMAPFolder;->checkRange(I)V

    .line 1253
    iget-object v0, p0, Lcom/sun/mail/imap/IMAPFolder;->messageCache:Ljava/util/Vector;

    add-int/lit8 v1, p1, -0x1

    invoke-virtual {v0, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljavax/mail/Message;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 1250
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method getMessageBySeqNumber(I)Lcom/sun/mail/imap/IMAPMessage;
    .locals 3
    .param p1, "seqnum"    # I

    .prologue
    .line 2455
    add-int/lit8 v0, p1, -0x1

    .local v0, "i":I
    :goto_0
    iget v2, p0, Lcom/sun/mail/imap/IMAPFolder;->total:I

    if-ge v0, v2, :cond_1

    .line 2456
    iget-object v2, p0, Lcom/sun/mail/imap/IMAPFolder;->messageCache:Ljava/util/Vector;

    invoke-virtual {v2, v0}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sun/mail/imap/IMAPMessage;

    .line 2457
    .local v1, "msg":Lcom/sun/mail/imap/IMAPMessage;
    invoke-virtual {v1}, Lcom/sun/mail/imap/IMAPMessage;->getSequenceNumber()I

    move-result v2

    if-ne v2, p1, :cond_0

    .line 2460
    .end local v1    # "msg":Lcom/sun/mail/imap/IMAPMessage;
    :goto_1
    return-object v1

    .line 2455
    .restart local v1    # "msg":Lcom/sun/mail/imap/IMAPMessage;
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 2460
    .end local v1    # "msg":Lcom/sun/mail/imap/IMAPMessage;
    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method

.method public declared-synchronized getMessageByUID(J)Ljavax/mail/Message;
    .locals 13
    .param p1, "uid"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 1678
    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/sun/mail/imap/IMAPFolder;->checkOpened()V

    .line 1680
    new-instance v3, Ljava/lang/Long;

    invoke-direct {v3, p1, p2}, Ljava/lang/Long;-><init>(J)V

    .line 1681
    .local v3, "l":Ljava/lang/Long;
    const/4 v4, 0x0

    .line 1683
    .local v4, "m":Lcom/sun/mail/imap/IMAPMessage;
    iget-object v8, p0, Lcom/sun/mail/imap/IMAPFolder;->uidTable:Ljava/util/Hashtable;

    if-eqz v8, :cond_0

    .line 1685
    iget-object v8, p0, Lcom/sun/mail/imap/IMAPFolder;->uidTable:Ljava/util/Hashtable;

    invoke-virtual {v8, v3}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    .end local v4    # "m":Lcom/sun/mail/imap/IMAPMessage;
    check-cast v4, Lcom/sun/mail/imap/IMAPMessage;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 1686
    .restart local v4    # "m":Lcom/sun/mail/imap/IMAPMessage;
    if-eqz v4, :cond_1

    move-object v5, v4

    .line 1711
    .end local v4    # "m":Lcom/sun/mail/imap/IMAPMessage;
    .local v5, "m":Lcom/sun/mail/imap/IMAPMessage;
    :goto_0
    monitor-exit p0

    return-object v5

    .line 1689
    .end local v5    # "m":Lcom/sun/mail/imap/IMAPMessage;
    .restart local v4    # "m":Lcom/sun/mail/imap/IMAPMessage;
    :cond_0
    :try_start_1
    new-instance v8, Ljava/util/Hashtable;

    invoke-direct {v8}, Ljava/util/Hashtable;-><init>()V

    iput-object v8, p0, Lcom/sun/mail/imap/IMAPFolder;->uidTable:Ljava/util/Hashtable;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 1694
    :cond_1
    :try_start_2
    iget-object v9, p0, Lcom/sun/mail/imap/IMAPFolder;->messageCacheLock:Ljava/lang/Object;

    monitor-enter v9
    :try_end_2
    .catch Lcom/sun/mail/iap/ConnectionException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Lcom/sun/mail/iap/ProtocolException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 1696
    :try_start_3
    iget-object v8, p0, Lcom/sun/mail/imap/IMAPFolder;->protocol:Lcom/sun/mail/imap/protocol/IMAPProtocol;

    invoke-virtual {v8, p1, p2}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->fetchSequenceNumber(J)Lcom/sun/mail/imap/protocol/UID;

    move-result-object v7

    .line 1698
    .local v7, "u":Lcom/sun/mail/imap/protocol/UID;
    if-eqz v7, :cond_2

    iget v8, v7, Lcom/sun/mail/imap/protocol/UID;->msgno:I

    iget v10, p0, Lcom/sun/mail/imap/IMAPFolder;->total:I

    if-gt v8, v10, :cond_2

    .line 1699
    iget-object v8, p0, Lcom/sun/mail/imap/IMAPFolder;->messageCache:Ljava/util/Vector;

    iget v10, v7, Lcom/sun/mail/imap/protocol/UID;->msgno:I

    add-int/lit8 v10, v10, -0x1

    invoke-virtual {v8, v10}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v8

    move-object v0, v8

    check-cast v0, Lcom/sun/mail/imap/IMAPMessage;

    move-object v4, v0

    .line 1700
    iget-wide v10, v7, Lcom/sun/mail/imap/protocol/UID;->uid:J

    invoke-virtual {v4, v10, v11}, Lcom/sun/mail/imap/IMAPMessage;->setUID(J)V

    .line 1702
    iget-object v8, p0, Lcom/sun/mail/imap/IMAPFolder;->uidTable:Ljava/util/Hashtable;

    invoke-virtual {v8, v3, v4}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1704
    :cond_2
    monitor-exit v9

    move-object v5, v4

    .line 1711
    .end local v4    # "m":Lcom/sun/mail/imap/IMAPMessage;
    .restart local v5    # "m":Lcom/sun/mail/imap/IMAPMessage;
    goto :goto_0

    .line 1704
    .end local v5    # "m":Lcom/sun/mail/imap/IMAPMessage;
    .end local v7    # "u":Lcom/sun/mail/imap/protocol/UID;
    .restart local v4    # "m":Lcom/sun/mail/imap/IMAPMessage;
    :catchall_0
    move-exception v8

    monitor-exit v9
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v8
    :try_end_4
    .catch Lcom/sun/mail/iap/ConnectionException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Lcom/sun/mail/iap/ProtocolException; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 1705
    :catch_0
    move-exception v2

    .line 1706
    .local v2, "cex":Lcom/sun/mail/iap/ConnectionException;
    :try_start_5
    new-instance v8, Ljavax/mail/FolderClosedException;

    invoke-virtual {v2}, Lcom/sun/mail/iap/ConnectionException;->getMessage()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, p0, v9}, Ljavax/mail/FolderClosedException;-><init>(Ljavax/mail/Folder;Ljava/lang/String;)V

    throw v8
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 1678
    .end local v2    # "cex":Lcom/sun/mail/iap/ConnectionException;
    .end local v3    # "l":Ljava/lang/Long;
    .end local v4    # "m":Lcom/sun/mail/imap/IMAPMessage;
    :catchall_1
    move-exception v8

    monitor-exit p0

    throw v8

    .line 1707
    .restart local v3    # "l":Ljava/lang/Long;
    .restart local v4    # "m":Lcom/sun/mail/imap/IMAPMessage;
    :catch_1
    move-exception v6

    .line 1708
    .local v6, "pex":Lcom/sun/mail/iap/ProtocolException;
    :try_start_6
    new-instance v8, Ljavax/mail/MessagingException;

    invoke-virtual {v6}, Lcom/sun/mail/iap/ProtocolException;->getMessage()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9, v6}, Ljavax/mail/MessagingException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v8
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1
.end method

.method public declared-synchronized getMessageCount()I
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 1054
    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/sun/mail/imap/IMAPFolder;->checkExists()V

    .line 1055
    iget-boolean v6, p0, Lcom/sun/mail/imap/IMAPFolder;->opened:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v6, :cond_0

    .line 1059
    :try_start_1
    invoke-direct {p0}, Lcom/sun/mail/imap/IMAPFolder;->getStatus()Lcom/sun/mail/imap/protocol/Status;

    move-result-object v5

    .line 1060
    .local v5, "status":Lcom/sun/mail/imap/protocol/Status;
    iget v6, v5, Lcom/sun/mail/imap/protocol/Status;->total:I
    :try_end_1
    .catch Lcom/sun/mail/iap/BadCommandException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lcom/sun/mail/iap/ConnectionException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Lcom/sun/mail/iap/ProtocolException; {:try_start_1 .. :try_end_1} :catch_3
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1089
    .end local v5    # "status":Lcom/sun/mail/imap/protocol/Status;
    :goto_0
    monitor-exit p0

    return v6

    .line 1061
    :catch_0
    move-exception v0

    .line 1064
    .local v0, "bex":Lcom/sun/mail/iap/BadCommandException;
    const/4 v3, 0x0

    .line 1067
    .local v3, "p":Lcom/sun/mail/imap/protocol/IMAPProtocol;
    :try_start_2
    invoke-virtual {p0}, Lcom/sun/mail/imap/IMAPFolder;->getStoreProtocol()Lcom/sun/mail/imap/protocol/IMAPProtocol;

    move-result-object v3

    .line 1068
    iget-object v6, p0, Lcom/sun/mail/imap/IMAPFolder;->fullName:Ljava/lang/String;

    invoke-virtual {v3, v6}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->examine(Ljava/lang/String;)Lcom/sun/mail/imap/protocol/MailboxInfo;

    move-result-object v2

    .line 1069
    .local v2, "minfo":Lcom/sun/mail/imap/protocol/MailboxInfo;
    invoke-virtual {v3}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->close()V

    .line 1070
    iget v6, v2, Lcom/sun/mail/imap/protocol/MailboxInfo;->total:I
    :try_end_2
    .catch Lcom/sun/mail/iap/ProtocolException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 1075
    :try_start_3
    invoke-virtual {p0, v3}, Lcom/sun/mail/imap/IMAPFolder;->releaseStoreProtocol(Lcom/sun/mail/imap/protocol/IMAPProtocol;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 1054
    .end local v0    # "bex":Lcom/sun/mail/iap/BadCommandException;
    .end local v2    # "minfo":Lcom/sun/mail/imap/protocol/MailboxInfo;
    .end local v3    # "p":Lcom/sun/mail/imap/protocol/IMAPProtocol;
    :catchall_0
    move-exception v6

    monitor-exit p0

    throw v6

    .line 1071
    .restart local v0    # "bex":Lcom/sun/mail/iap/BadCommandException;
    .restart local v3    # "p":Lcom/sun/mail/imap/protocol/IMAPProtocol;
    :catch_1
    move-exception v4

    .line 1073
    .local v4, "pex":Lcom/sun/mail/iap/ProtocolException;
    :try_start_4
    new-instance v6, Ljavax/mail/MessagingException;

    invoke-virtual {v4}, Lcom/sun/mail/iap/ProtocolException;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7, v4}, Ljavax/mail/MessagingException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v6
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 1075
    .end local v4    # "pex":Lcom/sun/mail/iap/ProtocolException;
    :catchall_1
    move-exception v6

    :try_start_5
    invoke-virtual {p0, v3}, Lcom/sun/mail/imap/IMAPFolder;->releaseStoreProtocol(Lcom/sun/mail/imap/protocol/IMAPProtocol;)V

    .line 1076
    throw v6

    .line 1077
    .end local v0    # "bex":Lcom/sun/mail/iap/BadCommandException;
    .end local v3    # "p":Lcom/sun/mail/imap/protocol/IMAPProtocol;
    :catch_2
    move-exception v1

    .line 1078
    .local v1, "cex":Lcom/sun/mail/iap/ConnectionException;
    new-instance v6, Ljavax/mail/StoreClosedException;

    iget-object v7, p0, Lcom/sun/mail/imap/IMAPFolder;->store:Ljavax/mail/Store;

    invoke-virtual {v1}, Lcom/sun/mail/iap/ConnectionException;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v6, v7, v8}, Ljavax/mail/StoreClosedException;-><init>(Ljavax/mail/Store;Ljava/lang/String;)V

    throw v6

    .line 1079
    .end local v1    # "cex":Lcom/sun/mail/iap/ConnectionException;
    :catch_3
    move-exception v4

    .line 1080
    .restart local v4    # "pex":Lcom/sun/mail/iap/ProtocolException;
    new-instance v6, Ljavax/mail/MessagingException;

    invoke-virtual {v4}, Lcom/sun/mail/iap/ProtocolException;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7, v4}, Ljavax/mail/MessagingException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v6

    .line 1085
    .end local v4    # "pex":Lcom/sun/mail/iap/ProtocolException;
    :cond_0
    iget-object v7, p0, Lcom/sun/mail/imap/IMAPFolder;->messageCacheLock:Ljava/lang/Object;

    monitor-enter v7
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 1088
    const/4 v6, 0x1

    :try_start_6
    invoke-direct {p0, v6}, Lcom/sun/mail/imap/IMAPFolder;->keepConnectionAlive(Z)V

    .line 1089
    iget v6, p0, Lcom/sun/mail/imap/IMAPFolder;->total:I
    :try_end_6
    .catch Lcom/sun/mail/iap/ConnectionException; {:try_start_6 .. :try_end_6} :catch_4
    .catch Lcom/sun/mail/iap/ProtocolException; {:try_start_6 .. :try_end_6} :catch_5
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    :try_start_7
    monitor-exit v7

    goto :goto_0

    .line 1095
    :catchall_2
    move-exception v6

    monitor-exit v7
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    :try_start_8
    throw v6
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 1090
    :catch_4
    move-exception v1

    .line 1091
    .restart local v1    # "cex":Lcom/sun/mail/iap/ConnectionException;
    :try_start_9
    new-instance v6, Ljavax/mail/FolderClosedException;

    invoke-virtual {v1}, Lcom/sun/mail/iap/ConnectionException;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v6, p0, v8}, Ljavax/mail/FolderClosedException;-><init>(Ljavax/mail/Folder;Ljava/lang/String;)V

    throw v6

    .line 1092
    .end local v1    # "cex":Lcom/sun/mail/iap/ConnectionException;
    :catch_5
    move-exception v4

    .line 1093
    .restart local v4    # "pex":Lcom/sun/mail/iap/ProtocolException;
    new-instance v6, Ljavax/mail/MessagingException;

    invoke-virtual {v4}, Lcom/sun/mail/iap/ProtocolException;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v6, v8, v4}, Ljavax/mail/MessagingException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v6
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_2
.end method

.method public declared-synchronized getMessagesByUID(JJ)[Ljavax/mail/Message;
    .locals 17
    .param p1, "start"    # J
    .param p3, "end"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 1721
    monitor-enter p0

    :try_start_0
    invoke-direct/range {p0 .. p0}, Lcom/sun/mail/imap/IMAPFolder;->checkOpened()V

    .line 1723
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/sun/mail/imap/IMAPFolder;->uidTable:Ljava/util/Hashtable;

    if-nez v10, :cond_0

    .line 1724
    new-instance v10, Ljava/util/Hashtable;

    invoke-direct {v10}, Ljava/util/Hashtable;-><init>()V

    move-object/from16 v0, p0

    iput-object v10, v0, Lcom/sun/mail/imap/IMAPFolder;->uidTable:Ljava/util/Hashtable;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 1728
    :cond_0
    :try_start_1
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/sun/mail/imap/IMAPFolder;->messageCacheLock:Ljava/lang/Object;

    monitor-enter v11
    :try_end_1
    .catch Lcom/sun/mail/iap/ConnectionException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lcom/sun/mail/iap/ProtocolException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 1730
    :try_start_2
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/sun/mail/imap/IMAPFolder;->protocol:Lcom/sun/mail/imap/protocol/IMAPProtocol;

    move-wide/from16 v0, p1

    move-wide/from16 v2, p3

    invoke-virtual {v10, v0, v1, v2, v3}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->fetchSequenceNumbers(JJ)[Lcom/sun/mail/imap/protocol/UID;

    move-result-object v9

    .line 1732
    .local v9, "ua":[Lcom/sun/mail/imap/protocol/UID;
    array-length v10, v9

    new-array v7, v10, [Ljavax/mail/Message;

    .line 1735
    .local v7, "msgs":[Ljavax/mail/Message;
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_0
    array-length v10, v9

    if-ge v5, v10, :cond_1

    .line 1736
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/sun/mail/imap/IMAPFolder;->messageCache:Ljava/util/Vector;

    aget-object v12, v9, v5

    iget v12, v12, Lcom/sun/mail/imap/protocol/UID;->msgno:I

    add-int/lit8 v12, v12, -0x1

    invoke-virtual {v10, v12}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/sun/mail/imap/IMAPMessage;

    .line 1737
    .local v6, "m":Lcom/sun/mail/imap/IMAPMessage;
    aget-object v10, v9, v5

    iget-wide v12, v10, Lcom/sun/mail/imap/protocol/UID;->uid:J

    invoke-virtual {v6, v12, v13}, Lcom/sun/mail/imap/IMAPMessage;->setUID(J)V

    .line 1738
    aput-object v6, v7, v5

    .line 1739
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/sun/mail/imap/IMAPFolder;->uidTable:Ljava/util/Hashtable;

    new-instance v12, Ljava/lang/Long;

    aget-object v13, v9, v5

    iget-wide v14, v13, Lcom/sun/mail/imap/protocol/UID;->uid:J

    invoke-direct {v12, v14, v15}, Ljava/lang/Long;-><init>(J)V

    invoke-virtual {v10, v12, v6}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1735
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 1741
    .end local v6    # "m":Lcom/sun/mail/imap/IMAPMessage;
    :cond_1
    monitor-exit v11
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1748
    monitor-exit p0

    return-object v7

    .line 1741
    .end local v5    # "i":I
    .end local v7    # "msgs":[Ljavax/mail/Message;
    .end local v9    # "ua":[Lcom/sun/mail/imap/protocol/UID;
    :catchall_0
    move-exception v10

    :try_start_3
    monitor-exit v11
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v10
    :try_end_4
    .catch Lcom/sun/mail/iap/ConnectionException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Lcom/sun/mail/iap/ProtocolException; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 1742
    :catch_0
    move-exception v4

    .line 1743
    .local v4, "cex":Lcom/sun/mail/iap/ConnectionException;
    :try_start_5
    new-instance v10, Ljavax/mail/FolderClosedException;

    invoke-virtual {v4}, Lcom/sun/mail/iap/ConnectionException;->getMessage()Ljava/lang/String;

    move-result-object v11

    move-object/from16 v0, p0

    invoke-direct {v10, v0, v11}, Ljavax/mail/FolderClosedException;-><init>(Ljavax/mail/Folder;Ljava/lang/String;)V

    throw v10
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 1721
    .end local v4    # "cex":Lcom/sun/mail/iap/ConnectionException;
    :catchall_1
    move-exception v10

    monitor-exit p0

    throw v10

    .line 1744
    :catch_1
    move-exception v8

    .line 1745
    .local v8, "pex":Lcom/sun/mail/iap/ProtocolException;
    :try_start_6
    new-instance v10, Ljavax/mail/MessagingException;

    invoke-virtual {v8}, Lcom/sun/mail/iap/ProtocolException;->getMessage()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11, v8}, Ljavax/mail/MessagingException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v10
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1
.end method

.method public declared-synchronized getMessagesByUID([J)[Ljavax/mail/Message;
    .locals 18
    .param p1, "uids"    # [J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 1760
    monitor-enter p0

    :try_start_0
    invoke-direct/range {p0 .. p0}, Lcom/sun/mail/imap/IMAPFolder;->checkOpened()V

    .line 1761
    move-object/from16 v9, p1

    .line 1763
    .local v9, "unavailUids":[J
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/sun/mail/imap/IMAPFolder;->uidTable:Ljava/util/Hashtable;

    if-eqz v12, :cond_2

    .line 1764
    new-instance v10, Ljava/util/Vector;

    invoke-direct {v10}, Ljava/util/Vector;-><init>()V

    .line 1766
    .local v10, "v":Ljava/util/Vector;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    move-object/from16 v0, p1

    array-length v12, v0

    if-ge v3, v12, :cond_1

    .line 1767
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/sun/mail/imap/IMAPFolder;->uidTable:Ljava/util/Hashtable;

    new-instance v4, Ljava/lang/Long;

    aget-wide v14, p1, v3

    invoke-direct {v4, v14, v15}, Ljava/lang/Long;-><init>(J)V

    .local v4, "l":Ljava/lang/Long;
    invoke-virtual {v12, v4}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_0

    .line 1769
    invoke-virtual {v10, v4}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 1766
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1772
    .end local v4    # "l":Ljava/lang/Long;
    :cond_1
    invoke-virtual {v10}, Ljava/util/Vector;->size()I

    move-result v11

    .line 1773
    .local v11, "vsize":I
    new-array v9, v11, [J

    .line 1774
    const/4 v3, 0x0

    :goto_1
    if-ge v3, v11, :cond_3

    .line 1775
    invoke-virtual {v10, v3}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/Long;

    invoke-virtual {v12}, Ljava/lang/Long;->longValue()J

    move-result-wide v12

    aput-wide v12, v9, v3

    .line 1774
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 1777
    .end local v3    # "i":I
    .end local v10    # "v":Ljava/util/Vector;
    .end local v11    # "vsize":I
    :cond_2
    new-instance v12, Ljava/util/Hashtable;

    invoke-direct {v12}, Ljava/util/Hashtable;-><init>()V

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/sun/mail/imap/IMAPFolder;->uidTable:Ljava/util/Hashtable;

    .line 1779
    :cond_3
    array-length v12, v9
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-lez v12, :cond_5

    .line 1781
    :try_start_1
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sun/mail/imap/IMAPFolder;->messageCacheLock:Ljava/lang/Object;

    monitor-enter v13
    :try_end_1
    .catch Lcom/sun/mail/iap/ConnectionException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lcom/sun/mail/iap/ProtocolException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 1783
    :try_start_2
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/sun/mail/imap/IMAPFolder;->protocol:Lcom/sun/mail/imap/protocol/IMAPProtocol;

    invoke-virtual {v12, v9}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->fetchSequenceNumbers([J)[Lcom/sun/mail/imap/protocol/UID;

    move-result-object v8

    .line 1785
    .local v8, "ua":[Lcom/sun/mail/imap/protocol/UID;
    const/4 v3, 0x0

    .restart local v3    # "i":I
    :goto_2
    array-length v12, v8

    if-ge v3, v12, :cond_4

    .line 1786
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/sun/mail/imap/IMAPFolder;->messageCache:Ljava/util/Vector;

    aget-object v14, v8, v3

    iget v14, v14, Lcom/sun/mail/imap/protocol/UID;->msgno:I

    add-int/lit8 v14, v14, -0x1

    invoke-virtual {v12, v14}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/sun/mail/imap/IMAPMessage;

    .line 1787
    .local v5, "m":Lcom/sun/mail/imap/IMAPMessage;
    aget-object v12, v8, v3

    iget-wide v14, v12, Lcom/sun/mail/imap/protocol/UID;->uid:J

    invoke-virtual {v5, v14, v15}, Lcom/sun/mail/imap/IMAPMessage;->setUID(J)V

    .line 1788
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/sun/mail/imap/IMAPFolder;->uidTable:Ljava/util/Hashtable;

    new-instance v14, Ljava/lang/Long;

    aget-object v15, v8, v3

    iget-wide v0, v15, Lcom/sun/mail/imap/protocol/UID;->uid:J

    move-wide/from16 v16, v0

    move-wide/from16 v0, v16

    invoke-direct {v14, v0, v1}, Ljava/lang/Long;-><init>(J)V

    invoke-virtual {v12, v14, v5}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1785
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 1790
    .end local v5    # "m":Lcom/sun/mail/imap/IMAPMessage;
    :cond_4
    monitor-exit v13
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1799
    .end local v3    # "i":I
    .end local v8    # "ua":[Lcom/sun/mail/imap/protocol/UID;
    :cond_5
    :try_start_3
    move-object/from16 v0, p1

    array-length v12, v0

    new-array v6, v12, [Ljavax/mail/Message;

    .line 1800
    .local v6, "msgs":[Ljavax/mail/Message;
    const/4 v3, 0x0

    .restart local v3    # "i":I
    :goto_3
    move-object/from16 v0, p1

    array-length v12, v0

    if-ge v3, v12, :cond_6

    .line 1801
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/sun/mail/imap/IMAPFolder;->uidTable:Ljava/util/Hashtable;

    new-instance v13, Ljava/lang/Long;

    aget-wide v14, p1, v3

    invoke-direct {v13, v14, v15}, Ljava/lang/Long;-><init>(J)V

    invoke-virtual {v12, v13}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljavax/mail/Message;

    aput-object v12, v6, v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 1800
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    .line 1790
    .end local v3    # "i":I
    .end local v6    # "msgs":[Ljavax/mail/Message;
    :catchall_0
    move-exception v12

    :try_start_4
    monitor-exit v13
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :try_start_5
    throw v12
    :try_end_5
    .catch Lcom/sun/mail/iap/ConnectionException; {:try_start_5 .. :try_end_5} :catch_0
    .catch Lcom/sun/mail/iap/ProtocolException; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 1791
    :catch_0
    move-exception v2

    .line 1792
    .local v2, "cex":Lcom/sun/mail/iap/ConnectionException;
    :try_start_6
    new-instance v12, Ljavax/mail/FolderClosedException;

    invoke-virtual {v2}, Lcom/sun/mail/iap/ConnectionException;->getMessage()Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p0

    invoke-direct {v12, v0, v13}, Ljavax/mail/FolderClosedException;-><init>(Ljavax/mail/Folder;Ljava/lang/String;)V

    throw v12
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 1760
    .end local v2    # "cex":Lcom/sun/mail/iap/ConnectionException;
    .end local v9    # "unavailUids":[J
    :catchall_1
    move-exception v12

    monitor-exit p0

    throw v12

    .line 1793
    .restart local v9    # "unavailUids":[J
    :catch_1
    move-exception v7

    .line 1794
    .local v7, "pex":Lcom/sun/mail/iap/ProtocolException;
    :try_start_7
    new-instance v12, Ljavax/mail/MessagingException;

    invoke-virtual {v7}, Lcom/sun/mail/iap/ProtocolException;->getMessage()Ljava/lang/String;

    move-result-object v13

    invoke-direct {v12, v13, v7}, Ljavax/mail/MessagingException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v12
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 1802
    .end local v7    # "pex":Lcom/sun/mail/iap/ProtocolException;
    .restart local v3    # "i":I
    .restart local v6    # "msgs":[Ljavax/mail/Message;
    :cond_6
    monitor-exit p0

    return-object v6
.end method

.method public getName()Ljava/lang/String;
    .locals 3

    .prologue
    .line 385
    iget-object v0, p0, Lcom/sun/mail/imap/IMAPFolder;->name:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 387
    :try_start_0
    iget-object v0, p0, Lcom/sun/mail/imap/IMAPFolder;->fullName:Ljava/lang/String;

    iget-object v1, p0, Lcom/sun/mail/imap/IMAPFolder;->fullName:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/sun/mail/imap/IMAPFolder;->getSeparator()C

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sun/mail/imap/IMAPFolder;->name:Ljava/lang/String;
    :try_end_0
    .catch Ljavax/mail/MessagingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 392
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/sun/mail/imap/IMAPFolder;->name:Ljava/lang/String;

    return-object v0

    .line 390
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public declared-synchronized getNewMessageCount()I
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 1103
    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/sun/mail/imap/IMAPFolder;->checkExists()V

    .line 1104
    iget-boolean v6, p0, Lcom/sun/mail/imap/IMAPFolder;->opened:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v6, :cond_0

    .line 1108
    :try_start_1
    invoke-direct {p0}, Lcom/sun/mail/imap/IMAPFolder;->getStatus()Lcom/sun/mail/imap/protocol/Status;

    move-result-object v5

    .line 1109
    .local v5, "status":Lcom/sun/mail/imap/protocol/Status;
    iget v6, v5, Lcom/sun/mail/imap/protocol/Status;->recent:I
    :try_end_1
    .catch Lcom/sun/mail/iap/BadCommandException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lcom/sun/mail/iap/ConnectionException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Lcom/sun/mail/iap/ProtocolException; {:try_start_1 .. :try_end_1} :catch_3
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1138
    .end local v5    # "status":Lcom/sun/mail/imap/protocol/Status;
    :goto_0
    monitor-exit p0

    return v6

    .line 1110
    :catch_0
    move-exception v0

    .line 1113
    .local v0, "bex":Lcom/sun/mail/iap/BadCommandException;
    const/4 v3, 0x0

    .line 1116
    .local v3, "p":Lcom/sun/mail/imap/protocol/IMAPProtocol;
    :try_start_2
    invoke-virtual {p0}, Lcom/sun/mail/imap/IMAPFolder;->getStoreProtocol()Lcom/sun/mail/imap/protocol/IMAPProtocol;

    move-result-object v3

    .line 1117
    iget-object v6, p0, Lcom/sun/mail/imap/IMAPFolder;->fullName:Ljava/lang/String;

    invoke-virtual {v3, v6}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->examine(Ljava/lang/String;)Lcom/sun/mail/imap/protocol/MailboxInfo;

    move-result-object v2

    .line 1118
    .local v2, "minfo":Lcom/sun/mail/imap/protocol/MailboxInfo;
    invoke-virtual {v3}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->close()V

    .line 1119
    iget v6, v2, Lcom/sun/mail/imap/protocol/MailboxInfo;->recent:I
    :try_end_2
    .catch Lcom/sun/mail/iap/ProtocolException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 1124
    :try_start_3
    invoke-virtual {p0, v3}, Lcom/sun/mail/imap/IMAPFolder;->releaseStoreProtocol(Lcom/sun/mail/imap/protocol/IMAPProtocol;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 1103
    .end local v0    # "bex":Lcom/sun/mail/iap/BadCommandException;
    .end local v2    # "minfo":Lcom/sun/mail/imap/protocol/MailboxInfo;
    .end local v3    # "p":Lcom/sun/mail/imap/protocol/IMAPProtocol;
    :catchall_0
    move-exception v6

    monitor-exit p0

    throw v6

    .line 1120
    .restart local v0    # "bex":Lcom/sun/mail/iap/BadCommandException;
    .restart local v3    # "p":Lcom/sun/mail/imap/protocol/IMAPProtocol;
    :catch_1
    move-exception v4

    .line 1122
    .local v4, "pex":Lcom/sun/mail/iap/ProtocolException;
    :try_start_4
    new-instance v6, Ljavax/mail/MessagingException;

    invoke-virtual {v4}, Lcom/sun/mail/iap/ProtocolException;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7, v4}, Ljavax/mail/MessagingException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v6
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 1124
    .end local v4    # "pex":Lcom/sun/mail/iap/ProtocolException;
    :catchall_1
    move-exception v6

    :try_start_5
    invoke-virtual {p0, v3}, Lcom/sun/mail/imap/IMAPFolder;->releaseStoreProtocol(Lcom/sun/mail/imap/protocol/IMAPProtocol;)V

    .line 1125
    throw v6

    .line 1126
    .end local v0    # "bex":Lcom/sun/mail/iap/BadCommandException;
    .end local v3    # "p":Lcom/sun/mail/imap/protocol/IMAPProtocol;
    :catch_2
    move-exception v1

    .line 1127
    .local v1, "cex":Lcom/sun/mail/iap/ConnectionException;
    new-instance v6, Ljavax/mail/StoreClosedException;

    iget-object v7, p0, Lcom/sun/mail/imap/IMAPFolder;->store:Ljavax/mail/Store;

    invoke-virtual {v1}, Lcom/sun/mail/iap/ConnectionException;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v6, v7, v8}, Ljavax/mail/StoreClosedException;-><init>(Ljavax/mail/Store;Ljava/lang/String;)V

    throw v6

    .line 1128
    .end local v1    # "cex":Lcom/sun/mail/iap/ConnectionException;
    :catch_3
    move-exception v4

    .line 1129
    .restart local v4    # "pex":Lcom/sun/mail/iap/ProtocolException;
    new-instance v6, Ljavax/mail/MessagingException;

    invoke-virtual {v4}, Lcom/sun/mail/iap/ProtocolException;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7, v4}, Ljavax/mail/MessagingException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v6

    .line 1134
    .end local v4    # "pex":Lcom/sun/mail/iap/ProtocolException;
    :cond_0
    iget-object v7, p0, Lcom/sun/mail/imap/IMAPFolder;->messageCacheLock:Ljava/lang/Object;

    monitor-enter v7
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 1137
    const/4 v6, 0x1

    :try_start_6
    invoke-direct {p0, v6}, Lcom/sun/mail/imap/IMAPFolder;->keepConnectionAlive(Z)V

    .line 1138
    iget v6, p0, Lcom/sun/mail/imap/IMAPFolder;->recent:I
    :try_end_6
    .catch Lcom/sun/mail/iap/ConnectionException; {:try_start_6 .. :try_end_6} :catch_4
    .catch Lcom/sun/mail/iap/ProtocolException; {:try_start_6 .. :try_end_6} :catch_5
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    :try_start_7
    monitor-exit v7

    goto :goto_0

    .line 1144
    :catchall_2
    move-exception v6

    monitor-exit v7
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    :try_start_8
    throw v6
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 1139
    :catch_4
    move-exception v1

    .line 1140
    .restart local v1    # "cex":Lcom/sun/mail/iap/ConnectionException;
    :try_start_9
    new-instance v6, Ljavax/mail/FolderClosedException;

    invoke-virtual {v1}, Lcom/sun/mail/iap/ConnectionException;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v6, p0, v8}, Ljavax/mail/FolderClosedException;-><init>(Ljavax/mail/Folder;Ljava/lang/String;)V

    throw v6

    .line 1141
    .end local v1    # "cex":Lcom/sun/mail/iap/ConnectionException;
    :catch_5
    move-exception v4

    .line 1142
    .restart local v4    # "pex":Lcom/sun/mail/iap/ProtocolException;
    new-instance v6, Ljavax/mail/MessagingException;

    invoke-virtual {v4}, Lcom/sun/mail/iap/ProtocolException;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v6, v8, v4}, Ljavax/mail/MessagingException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v6
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_2
.end method

.method public getParent()Ljavax/mail/Folder;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 406
    invoke-virtual {p0}, Lcom/sun/mail/imap/IMAPFolder;->getSeparator()C

    move-result v0

    .line 408
    .local v0, "c":C
    iget-object v2, p0, Lcom/sun/mail/imap/IMAPFolder;->fullName:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v1

    .local v1, "index":I
    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    .line 409
    new-instance v3, Lcom/sun/mail/imap/IMAPFolder;

    iget-object v2, p0, Lcom/sun/mail/imap/IMAPFolder;->fullName:Ljava/lang/String;

    const/4 v4, 0x0

    invoke-virtual {v2, v4, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    iget-object v2, p0, Lcom/sun/mail/imap/IMAPFolder;->store:Ljavax/mail/Store;

    check-cast v2, Lcom/sun/mail/imap/IMAPStore;

    invoke-direct {v3, v4, v0, v2}, Lcom/sun/mail/imap/IMAPFolder;-><init>(Ljava/lang/String;CLcom/sun/mail/imap/IMAPStore;)V

    move-object v2, v3

    .line 412
    :goto_0
    return-object v2

    :cond_0
    new-instance v3, Lcom/sun/mail/imap/DefaultFolder;

    iget-object v2, p0, Lcom/sun/mail/imap/IMAPFolder;->store:Ljavax/mail/Store;

    check-cast v2, Lcom/sun/mail/imap/IMAPStore;

    invoke-direct {v3, v2}, Lcom/sun/mail/imap/DefaultFolder;-><init>(Lcom/sun/mail/imap/IMAPStore;)V

    move-object v2, v3

    goto :goto_0
.end method

.method public getPermanentFlags()Ljavax/mail/Flags;
    .locals 1

    .prologue
    .line 1047
    iget-object v0, p0, Lcom/sun/mail/imap/IMAPFolder;->permanentFlags:Ljavax/mail/Flags;

    return-object v0
.end method

.method public getProtocol()Lcom/sun/mail/imap/protocol/IMAPProtocol;
    .locals 1

    .prologue
    .line 2229
    iget-object v0, p0, Lcom/sun/mail/imap/IMAPFolder;->protocol:Lcom/sun/mail/imap/protocol/IMAPProtocol;

    return-object v0
.end method

.method public getQuota()[Ljavax/mail/Quota;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 1865
    const-string v0, "QUOTA not supported"

    new-instance v1, Lcom/sun/mail/imap/IMAPFolder$12;

    invoke-direct {v1, p0}, Lcom/sun/mail/imap/IMAPFolder$12;-><init>(Lcom/sun/mail/imap/IMAPFolder;)V

    invoke-virtual {p0, v0, v1}, Lcom/sun/mail/imap/IMAPFolder;->doOptionalCommand(Ljava/lang/String;Lcom/sun/mail/imap/IMAPFolder$ProtocolCommand;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljavax/mail/Quota;

    check-cast v0, [Ljavax/mail/Quota;

    return-object v0
.end method

.method public declared-synchronized getSeparator()C
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 539
    monitor-enter p0

    :try_start_0
    iget-char v2, p0, Lcom/sun/mail/imap/IMAPFolder;->separator:C

    const v3, 0xffff

    if-ne v2, v3, :cond_0

    .line 540
    const/4 v1, 0x0

    .line 542
    .local v1, "li":[Lcom/sun/mail/imap/protocol/ListInfo;
    new-instance v2, Lcom/sun/mail/imap/IMAPFolder$3;

    invoke-direct {v2, p0}, Lcom/sun/mail/imap/IMAPFolder$3;-><init>(Lcom/sun/mail/imap/IMAPFolder;)V

    invoke-virtual {p0, v2}, Lcom/sun/mail/imap/IMAPFolder;->doCommand(Lcom/sun/mail/imap/IMAPFolder$ProtocolCommand;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Lcom/sun/mail/imap/protocol/ListInfo;

    move-object v0, v2

    check-cast v0, [Lcom/sun/mail/imap/protocol/ListInfo;

    move-object v1, v0

    .line 555
    if-eqz v1, :cond_1

    .line 556
    const/4 v2, 0x0

    aget-object v2, v1, v2

    iget-char v2, v2, Lcom/sun/mail/imap/protocol/ListInfo;->separator:C

    iput-char v2, p0, Lcom/sun/mail/imap/IMAPFolder;->separator:C

    .line 560
    .end local v1    # "li":[Lcom/sun/mail/imap/protocol/ListInfo;
    :cond_0
    :goto_0
    iget-char v2, p0, Lcom/sun/mail/imap/IMAPFolder;->separator:C
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v2

    .line 558
    .restart local v1    # "li":[Lcom/sun/mail/imap/protocol/ListInfo;
    :cond_1
    const/16 v2, 0x2f

    :try_start_1
    iput-char v2, p0, Lcom/sun/mail/imap/IMAPFolder;->separator:C
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 539
    .end local v1    # "li":[Lcom/sun/mail/imap/protocol/ListInfo;
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method protected declared-synchronized getStoreProtocol()Lcom/sun/mail/imap/protocol/IMAPProtocol;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/mail/iap/ProtocolException;
        }
    .end annotation

    .prologue
    .line 2185
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/sun/mail/imap/IMAPFolder;->connectionPoolDebug:Z

    if-eqz v0, :cond_0

    .line 2186
    iget-object v0, p0, Lcom/sun/mail/imap/IMAPFolder;->out:Ljava/io/PrintStream;

    const-string v1, "DEBUG: getStoreProtocol() - borrowing a connection"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 2189
    :cond_0
    iget-object v0, p0, Lcom/sun/mail/imap/IMAPFolder;->store:Ljavax/mail/Store;

    check-cast v0, Lcom/sun/mail/imap/IMAPStore;

    invoke-virtual {v0}, Lcom/sun/mail/imap/IMAPStore;->getStoreProtocol()Lcom/sun/mail/imap/protocol/IMAPProtocol;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    monitor-exit p0

    return-object v0

    .line 2185
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getType()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 567
    invoke-direct {p0}, Lcom/sun/mail/imap/IMAPFolder;->checkExists()V

    .line 568
    iget v0, p0, Lcom/sun/mail/imap/IMAPFolder;->type:I

    return v0
.end method

.method public declared-synchronized getUID(Ljavax/mail/Message;)J
    .locals 13
    .param p1, "message"    # Ljavax/mail/Message;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 1810
    monitor-enter p0

    :try_start_0
    invoke-virtual {p1}, Ljavax/mail/Message;->getFolder()Ljavax/mail/Folder;

    move-result-object v10

    if-eq v10, p0, :cond_0

    .line 1811
    new-instance v10, Ljava/util/NoSuchElementException;

    const-string v11, "Message does not belong to this folder"

    invoke-direct {v10, v11}, Ljava/util/NoSuchElementException;-><init>(Ljava/lang/String;)V

    throw v10
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1810
    :catchall_0
    move-exception v10

    monitor-exit p0

    throw v10

    .line 1814
    :cond_0
    :try_start_1
    invoke-direct {p0}, Lcom/sun/mail/imap/IMAPFolder;->checkOpened()V

    .line 1816
    move-object v0, p1

    check-cast v0, Lcom/sun/mail/imap/IMAPMessage;

    move-object v3, v0

    .line 1819
    .local v3, "m":Lcom/sun/mail/imap/IMAPMessage;
    invoke-virtual {v3}, Lcom/sun/mail/imap/IMAPMessage;->getUID()J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-wide v6

    .local v6, "uid":J
    const-wide/16 v10, -0x1

    cmp-long v10, v6, v10

    if-eqz v10, :cond_1

    move-wide v8, v6

    .line 1844
    .end local v6    # "uid":J
    .local v8, "uid":J
    :goto_0
    monitor-exit p0

    return-wide v8

    .line 1822
    .end local v8    # "uid":J
    .restart local v6    # "uid":J
    :cond_1
    const/4 v5, 0x0

    .line 1823
    .local v5, "u":Lcom/sun/mail/imap/protocol/UID;
    :try_start_2
    iget-object v11, p0, Lcom/sun/mail/imap/IMAPFolder;->messageCacheLock:Ljava/lang/Object;

    monitor-enter v11
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1824
    :try_start_3
    invoke-virtual {v3}, Lcom/sun/mail/imap/IMAPMessage;->checkExpunged()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 1826
    :try_start_4
    iget-object v10, p0, Lcom/sun/mail/imap/IMAPFolder;->protocol:Lcom/sun/mail/imap/protocol/IMAPProtocol;

    invoke-virtual {v3}, Lcom/sun/mail/imap/IMAPMessage;->getSequenceNumber()I

    move-result v12

    invoke-virtual {v10, v12}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->fetchUID(I)Lcom/sun/mail/imap/protocol/UID;
    :try_end_4
    .catch Lcom/sun/mail/iap/ConnectionException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Lcom/sun/mail/iap/ProtocolException; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    move-result-object v5

    .line 1832
    :try_start_5
    monitor-exit v11
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 1834
    if-eqz v5, :cond_3

    .line 1835
    :try_start_6
    iget-wide v6, v5, Lcom/sun/mail/imap/protocol/UID;->uid:J

    .line 1836
    invoke-virtual {v3, v6, v7}, Lcom/sun/mail/imap/IMAPMessage;->setUID(J)V

    .line 1839
    iget-object v10, p0, Lcom/sun/mail/imap/IMAPFolder;->uidTable:Ljava/util/Hashtable;

    if-nez v10, :cond_2

    .line 1840
    new-instance v10, Ljava/util/Hashtable;

    invoke-direct {v10}, Ljava/util/Hashtable;-><init>()V

    iput-object v10, p0, Lcom/sun/mail/imap/IMAPFolder;->uidTable:Ljava/util/Hashtable;

    .line 1841
    :cond_2
    iget-object v10, p0, Lcom/sun/mail/imap/IMAPFolder;->uidTable:Ljava/util/Hashtable;

    new-instance v11, Ljava/lang/Long;

    invoke-direct {v11, v6, v7}, Ljava/lang/Long;-><init>(J)V

    invoke-virtual {v10, v11, v3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    :cond_3
    move-wide v8, v6

    .line 1844
    .end local v6    # "uid":J
    .restart local v8    # "uid":J
    goto :goto_0

    .line 1827
    .end local v8    # "uid":J
    .restart local v6    # "uid":J
    :catch_0
    move-exception v2

    .line 1828
    .local v2, "cex":Lcom/sun/mail/iap/ConnectionException;
    :try_start_7
    new-instance v10, Ljavax/mail/FolderClosedException;

    invoke-virtual {v2}, Lcom/sun/mail/iap/ConnectionException;->getMessage()Ljava/lang/String;

    move-result-object v12

    invoke-direct {v10, p0, v12}, Ljavax/mail/FolderClosedException;-><init>(Ljavax/mail/Folder;Ljava/lang/String;)V

    throw v10

    .line 1832
    .end local v2    # "cex":Lcom/sun/mail/iap/ConnectionException;
    :catchall_1
    move-exception v10

    monitor-exit v11
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    :try_start_8
    throw v10
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 1829
    :catch_1
    move-exception v4

    .line 1830
    .local v4, "pex":Lcom/sun/mail/iap/ProtocolException;
    :try_start_9
    new-instance v10, Ljavax/mail/MessagingException;

    invoke-virtual {v4}, Lcom/sun/mail/iap/ProtocolException;->getMessage()Ljava/lang/String;

    move-result-object v12

    invoke-direct {v10, v12, v4}, Ljavax/mail/MessagingException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v10
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1
.end method

.method public declared-synchronized getUIDNext()J
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 1647
    monitor-enter p0

    :try_start_0
    iget-boolean v6, p0, Lcom/sun/mail/imap/IMAPFolder;->opened:Z

    if-eqz v6, :cond_0

    .line 1648
    iget v6, p0, Lcom/sun/mail/imap/IMAPFolder;->uidnext:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    int-to-long v6, v6

    .line 1669
    :goto_0
    monitor-exit p0

    return-wide v6

    .line 1650
    :cond_0
    const/4 v3, 0x0

    .line 1651
    .local v3, "p":Lcom/sun/mail/imap/protocol/IMAPProtocol;
    const/4 v5, 0x0

    .line 1654
    .local v5, "status":Lcom/sun/mail/imap/protocol/Status;
    :try_start_1
    invoke-virtual {p0}, Lcom/sun/mail/imap/IMAPFolder;->getStoreProtocol()Lcom/sun/mail/imap/protocol/IMAPProtocol;

    move-result-object v3

    .line 1655
    const/4 v6, 0x1

    new-array v2, v6, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string v7, "UIDNEXT"

    aput-object v7, v2, v6

    .line 1656
    .local v2, "item":[Ljava/lang/String;
    iget-object v6, p0, Lcom/sun/mail/imap/IMAPFolder;->fullName:Ljava/lang/String;

    invoke-virtual {v3, v6, v2}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->status(Ljava/lang/String;[Ljava/lang/String;)Lcom/sun/mail/imap/protocol/Status;
    :try_end_1
    .catch Lcom/sun/mail/iap/BadCommandException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lcom/sun/mail/iap/ConnectionException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Lcom/sun/mail/iap/ProtocolException; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v5

    .line 1666
    :try_start_2
    invoke-virtual {p0, v3}, Lcom/sun/mail/imap/IMAPFolder;->releaseStoreProtocol(Lcom/sun/mail/imap/protocol/IMAPProtocol;)V

    .line 1669
    .end local v2    # "item":[Ljava/lang/String;
    :goto_1
    iget-wide v6, v5, Lcom/sun/mail/imap/protocol/Status;->uidnext:J
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_0

    .line 1657
    :catch_0
    move-exception v0

    .line 1659
    .local v0, "bex":Lcom/sun/mail/iap/BadCommandException;
    :try_start_3
    new-instance v6, Ljavax/mail/MessagingException;

    const-string v7, "Cannot obtain UIDNext"

    invoke-direct {v6, v7, v0}, Ljavax/mail/MessagingException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v6
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1666
    .end local v0    # "bex":Lcom/sun/mail/iap/BadCommandException;
    :catchall_0
    move-exception v6

    :try_start_4
    invoke-virtual {p0, v3}, Lcom/sun/mail/imap/IMAPFolder;->releaseStoreProtocol(Lcom/sun/mail/imap/protocol/IMAPProtocol;)V

    .line 1667
    throw v6
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 1647
    .end local v3    # "p":Lcom/sun/mail/imap/protocol/IMAPProtocol;
    .end local v5    # "status":Lcom/sun/mail/imap/protocol/Status;
    :catchall_1
    move-exception v6

    monitor-exit p0

    throw v6

    .line 1660
    .restart local v3    # "p":Lcom/sun/mail/imap/protocol/IMAPProtocol;
    .restart local v5    # "status":Lcom/sun/mail/imap/protocol/Status;
    :catch_1
    move-exception v1

    .line 1662
    .local v1, "cex":Lcom/sun/mail/iap/ConnectionException;
    :try_start_5
    invoke-direct {p0, v1}, Lcom/sun/mail/imap/IMAPFolder;->throwClosedException(Lcom/sun/mail/iap/ConnectionException;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 1666
    :try_start_6
    invoke-virtual {p0, v3}, Lcom/sun/mail/imap/IMAPFolder;->releaseStoreProtocol(Lcom/sun/mail/imap/protocol/IMAPProtocol;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    goto :goto_1

    .line 1663
    .end local v1    # "cex":Lcom/sun/mail/iap/ConnectionException;
    :catch_2
    move-exception v4

    .line 1664
    .local v4, "pex":Lcom/sun/mail/iap/ProtocolException;
    :try_start_7
    new-instance v6, Ljavax/mail/MessagingException;

    invoke-virtual {v4}, Lcom/sun/mail/iap/ProtocolException;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7, v4}, Ljavax/mail/MessagingException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v6
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0
.end method

.method public declared-synchronized getUIDValidity()J
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 1603
    monitor-enter p0

    :try_start_0
    iget-boolean v6, p0, Lcom/sun/mail/imap/IMAPFolder;->opened:Z

    if-eqz v6, :cond_0

    .line 1604
    iget v6, p0, Lcom/sun/mail/imap/IMAPFolder;->uidvalidity:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    int-to-long v6, v6

    .line 1625
    :goto_0
    monitor-exit p0

    return-wide v6

    .line 1606
    :cond_0
    const/4 v3, 0x0

    .line 1607
    .local v3, "p":Lcom/sun/mail/imap/protocol/IMAPProtocol;
    const/4 v5, 0x0

    .line 1610
    .local v5, "status":Lcom/sun/mail/imap/protocol/Status;
    :try_start_1
    invoke-virtual {p0}, Lcom/sun/mail/imap/IMAPFolder;->getStoreProtocol()Lcom/sun/mail/imap/protocol/IMAPProtocol;

    move-result-object v3

    .line 1611
    const/4 v6, 0x1

    new-array v2, v6, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string v7, "UIDVALIDITY"

    aput-object v7, v2, v6

    .line 1612
    .local v2, "item":[Ljava/lang/String;
    iget-object v6, p0, Lcom/sun/mail/imap/IMAPFolder;->fullName:Ljava/lang/String;

    invoke-virtual {v3, v6, v2}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->status(Ljava/lang/String;[Ljava/lang/String;)Lcom/sun/mail/imap/protocol/Status;
    :try_end_1
    .catch Lcom/sun/mail/iap/BadCommandException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lcom/sun/mail/iap/ConnectionException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Lcom/sun/mail/iap/ProtocolException; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v5

    .line 1622
    :try_start_2
    invoke-virtual {p0, v3}, Lcom/sun/mail/imap/IMAPFolder;->releaseStoreProtocol(Lcom/sun/mail/imap/protocol/IMAPProtocol;)V

    .line 1625
    .end local v2    # "item":[Ljava/lang/String;
    :goto_1
    iget-wide v6, v5, Lcom/sun/mail/imap/protocol/Status;->uidvalidity:J
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_0

    .line 1613
    :catch_0
    move-exception v0

    .line 1615
    .local v0, "bex":Lcom/sun/mail/iap/BadCommandException;
    :try_start_3
    new-instance v6, Ljavax/mail/MessagingException;

    const-string v7, "Cannot obtain UIDValidity"

    invoke-direct {v6, v7, v0}, Ljavax/mail/MessagingException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v6
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1622
    .end local v0    # "bex":Lcom/sun/mail/iap/BadCommandException;
    :catchall_0
    move-exception v6

    :try_start_4
    invoke-virtual {p0, v3}, Lcom/sun/mail/imap/IMAPFolder;->releaseStoreProtocol(Lcom/sun/mail/imap/protocol/IMAPProtocol;)V

    .line 1623
    throw v6
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 1603
    .end local v3    # "p":Lcom/sun/mail/imap/protocol/IMAPProtocol;
    .end local v5    # "status":Lcom/sun/mail/imap/protocol/Status;
    :catchall_1
    move-exception v6

    monitor-exit p0

    throw v6

    .line 1616
    .restart local v3    # "p":Lcom/sun/mail/imap/protocol/IMAPProtocol;
    .restart local v5    # "status":Lcom/sun/mail/imap/protocol/Status;
    :catch_1
    move-exception v1

    .line 1618
    .local v1, "cex":Lcom/sun/mail/iap/ConnectionException;
    :try_start_5
    invoke-direct {p0, v1}, Lcom/sun/mail/imap/IMAPFolder;->throwClosedException(Lcom/sun/mail/iap/ConnectionException;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 1622
    :try_start_6
    invoke-virtual {p0, v3}, Lcom/sun/mail/imap/IMAPFolder;->releaseStoreProtocol(Lcom/sun/mail/imap/protocol/IMAPProtocol;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    goto :goto_1

    .line 1619
    .end local v1    # "cex":Lcom/sun/mail/iap/ConnectionException;
    :catch_2
    move-exception v4

    .line 1620
    .local v4, "pex":Lcom/sun/mail/iap/ProtocolException;
    :try_start_7
    new-instance v6, Ljavax/mail/MessagingException;

    invoke-virtual {v4}, Lcom/sun/mail/iap/ProtocolException;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7, v4}, Ljavax/mail/MessagingException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v6
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0
.end method

.method public declared-synchronized getUnreadMessageCount()I
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 1152
    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/sun/mail/imap/IMAPFolder;->checkExists()V

    .line 1153
    iget-boolean v6, p0, Lcom/sun/mail/imap/IMAPFolder;->opened:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v6, :cond_0

    .line 1157
    :try_start_1
    invoke-direct {p0}, Lcom/sun/mail/imap/IMAPFolder;->getStatus()Lcom/sun/mail/imap/protocol/Status;

    move-result-object v5

    .line 1158
    .local v5, "status":Lcom/sun/mail/imap/protocol/Status;
    iget v6, v5, Lcom/sun/mail/imap/protocol/Status;->unseen:I
    :try_end_1
    .catch Lcom/sun/mail/iap/BadCommandException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lcom/sun/mail/iap/ConnectionException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Lcom/sun/mail/iap/ProtocolException; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1178
    .end local v5    # "status":Lcom/sun/mail/imap/protocol/Status;
    :goto_0
    monitor-exit p0

    return v6

    .line 1159
    :catch_0
    move-exception v0

    .line 1163
    .local v0, "bex":Lcom/sun/mail/iap/BadCommandException;
    const/4 v6, -0x1

    goto :goto_0

    .line 1164
    .end local v0    # "bex":Lcom/sun/mail/iap/BadCommandException;
    :catch_1
    move-exception v1

    .line 1165
    .local v1, "cex":Lcom/sun/mail/iap/ConnectionException;
    :try_start_2
    new-instance v6, Ljavax/mail/StoreClosedException;

    iget-object v7, p0, Lcom/sun/mail/imap/IMAPFolder;->store:Ljavax/mail/Store;

    invoke-virtual {v1}, Lcom/sun/mail/iap/ConnectionException;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v6, v7, v8}, Ljavax/mail/StoreClosedException;-><init>(Ljavax/mail/Store;Ljava/lang/String;)V

    throw v6
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1152
    .end local v1    # "cex":Lcom/sun/mail/iap/ConnectionException;
    :catchall_0
    move-exception v6

    monitor-exit p0

    throw v6

    .line 1166
    :catch_2
    move-exception v4

    .line 1167
    .local v4, "pex":Lcom/sun/mail/iap/ProtocolException;
    :try_start_3
    new-instance v6, Ljavax/mail/MessagingException;

    invoke-virtual {v4}, Lcom/sun/mail/iap/ProtocolException;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7, v4}, Ljavax/mail/MessagingException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v6

    .line 1173
    .end local v4    # "pex":Lcom/sun/mail/iap/ProtocolException;
    :cond_0
    new-instance v2, Ljavax/mail/Flags;

    invoke-direct {v2}, Ljavax/mail/Flags;-><init>()V

    .line 1174
    .local v2, "f":Ljavax/mail/Flags;
    sget-object v6, Ljavax/mail/Flags$Flag;->SEEN:Ljavax/mail/Flags$Flag;

    invoke-virtual {v2, v6}, Ljavax/mail/Flags;->add(Ljavax/mail/Flags$Flag;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1176
    :try_start_4
    iget-object v7, p0, Lcom/sun/mail/imap/IMAPFolder;->messageCacheLock:Ljava/lang/Object;

    monitor-enter v7
    :try_end_4
    .catch Lcom/sun/mail/iap/ConnectionException; {:try_start_4 .. :try_end_4} :catch_3
    .catch Lcom/sun/mail/iap/ProtocolException; {:try_start_4 .. :try_end_4} :catch_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 1177
    :try_start_5
    iget-object v6, p0, Lcom/sun/mail/imap/IMAPFolder;->protocol:Lcom/sun/mail/imap/protocol/IMAPProtocol;

    new-instance v8, Ljavax/mail/search/FlagTerm;

    const/4 v9, 0x0

    invoke-direct {v8, v2, v9}, Ljavax/mail/search/FlagTerm;-><init>(Ljavax/mail/Flags;Z)V

    invoke-virtual {v6, v8}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->search(Ljavax/mail/search/SearchTerm;)[I

    move-result-object v3

    .line 1178
    .local v3, "matches":[I
    array-length v6, v3

    monitor-exit v7

    goto :goto_0

    .line 1179
    .end local v3    # "matches":[I
    :catchall_1
    move-exception v6

    monitor-exit v7
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :try_start_6
    throw v6
    :try_end_6
    .catch Lcom/sun/mail/iap/ConnectionException; {:try_start_6 .. :try_end_6} :catch_3
    .catch Lcom/sun/mail/iap/ProtocolException; {:try_start_6 .. :try_end_6} :catch_4
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 1180
    :catch_3
    move-exception v1

    .line 1181
    .restart local v1    # "cex":Lcom/sun/mail/iap/ConnectionException;
    :try_start_7
    new-instance v6, Ljavax/mail/FolderClosedException;

    invoke-virtual {v1}, Lcom/sun/mail/iap/ConnectionException;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, p0, v7}, Ljavax/mail/FolderClosedException;-><init>(Ljavax/mail/Folder;Ljava/lang/String;)V

    throw v6

    .line 1182
    .end local v1    # "cex":Lcom/sun/mail/iap/ConnectionException;
    :catch_4
    move-exception v4

    .line 1184
    .restart local v4    # "pex":Lcom/sun/mail/iap/ProtocolException;
    new-instance v6, Ljavax/mail/MessagingException;

    invoke-virtual {v4}, Lcom/sun/mail/iap/ProtocolException;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7, v4}, Ljavax/mail/MessagingException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v6
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0
.end method

.method public handleResponse(Lcom/sun/mail/iap/Response;)V
    .locals 12
    .param p1, "r"    # Lcom/sun/mail/iap/Response;

    .prologue
    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 2055
    invoke-virtual {p1}, Lcom/sun/mail/iap/Response;->isOK()Z

    move-result v9

    if-nez v9, :cond_0

    invoke-virtual {p1}, Lcom/sun/mail/iap/Response;->isNO()Z

    move-result v9

    if-nez v9, :cond_0

    invoke-virtual {p1}, Lcom/sun/mail/iap/Response;->isBAD()Z

    move-result v9

    if-nez v9, :cond_0

    invoke-virtual {p1}, Lcom/sun/mail/iap/Response;->isBYE()Z

    move-result v9

    if-eqz v9, :cond_1

    .line 2056
    :cond_0
    iget-object v9, p0, Lcom/sun/mail/imap/IMAPFolder;->store:Ljavax/mail/Store;

    check-cast v9, Lcom/sun/mail/imap/IMAPStore;

    invoke-virtual {v9, p1}, Lcom/sun/mail/imap/IMAPStore;->handleResponseCode(Lcom/sun/mail/iap/Response;)V

    .line 2062
    :cond_1
    invoke-virtual {p1}, Lcom/sun/mail/iap/Response;->isBYE()Z

    move-result v9

    if-eqz v9, :cond_3

    .line 2063
    iget-boolean v9, p0, Lcom/sun/mail/imap/IMAPFolder;->opened:Z

    if-eqz v9, :cond_2

    .line 2064
    invoke-direct {p0, v10}, Lcom/sun/mail/imap/IMAPFolder;->cleanup(Z)V

    .line 2152
    :cond_2
    :goto_0
    return-void

    .line 2066
    :cond_3
    invoke-virtual {p1}, Lcom/sun/mail/iap/Response;->isOK()Z

    move-result v9

    if-nez v9, :cond_2

    .line 2068
    invoke-virtual {p1}, Lcom/sun/mail/iap/Response;->isUnTagged()Z

    move-result v9

    if-eqz v9, :cond_2

    .line 2073
    instance-of v9, p1, Lcom/sun/mail/imap/protocol/IMAPResponse;

    if-nez v9, :cond_4

    .line 2076
    iget-object v9, p0, Lcom/sun/mail/imap/IMAPFolder;->out:Ljava/io/PrintStream;

    new-instance v10, Ljava/lang/StringBuffer;

    invoke-direct {v10}, Ljava/lang/StringBuffer;-><init>()V

    const-string v11, "UNEXPECTED RESPONSE : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v10

    invoke-virtual {p1}, Lcom/sun/mail/iap/Response;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 2077
    iget-object v9, p0, Lcom/sun/mail/imap/IMAPFolder;->out:Ljava/io/PrintStream;

    const-string v10, "CONTACT javamail@sun.com"

    invoke-virtual {v9, v10}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_0

    :cond_4
    move-object v5, p1

    .line 2081
    check-cast v5, Lcom/sun/mail/imap/protocol/IMAPResponse;

    .line 2083
    .local v5, "ir":Lcom/sun/mail/imap/protocol/IMAPResponse;
    const-string v9, "EXISTS"

    invoke-virtual {v5, v9}, Lcom/sun/mail/imap/protocol/IMAPResponse;->keyEquals(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_6

    .line 2084
    invoke-virtual {v5}, Lcom/sun/mail/imap/protocol/IMAPResponse;->getNumber()I

    move-result v1

    .line 2085
    .local v1, "exists":I
    iget v9, p0, Lcom/sun/mail/imap/IMAPFolder;->realTotal:I

    if-le v1, v9, :cond_2

    .line 2089
    iget v9, p0, Lcom/sun/mail/imap/IMAPFolder;->realTotal:I

    sub-int v0, v1, v9

    .line 2090
    .local v0, "count":I
    new-array v8, v0, [Ljavax/mail/Message;

    .line 2093
    .local v8, "msgs":[Ljavax/mail/Message;
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_1
    if-ge v4, v0, :cond_5

    .line 2096
    new-instance v7, Lcom/sun/mail/imap/IMAPMessage;

    iget v9, p0, Lcom/sun/mail/imap/IMAPFolder;->total:I

    add-int/lit8 v9, v9, 0x1

    iput v9, p0, Lcom/sun/mail/imap/IMAPFolder;->total:I

    iget v10, p0, Lcom/sun/mail/imap/IMAPFolder;->realTotal:I

    add-int/lit8 v10, v10, 0x1

    iput v10, p0, Lcom/sun/mail/imap/IMAPFolder;->realTotal:I

    invoke-direct {v7, p0, v9, v10}, Lcom/sun/mail/imap/IMAPMessage;-><init>(Lcom/sun/mail/imap/IMAPFolder;II)V

    .line 2097
    .local v7, "msg":Lcom/sun/mail/imap/IMAPMessage;
    aput-object v7, v8, v4

    .line 2098
    iget-object v9, p0, Lcom/sun/mail/imap/IMAPFolder;->messageCache:Ljava/util/Vector;

    invoke-virtual {v9, v7}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 2093
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 2102
    .end local v7    # "msg":Lcom/sun/mail/imap/IMAPMessage;
    :cond_5
    invoke-virtual {p0, v8}, Lcom/sun/mail/imap/IMAPFolder;->notifyMessageAddedListeners([Ljavax/mail/Message;)V

    goto :goto_0

    .line 2104
    .end local v0    # "count":I
    .end local v1    # "exists":I
    .end local v4    # "i":I
    .end local v8    # "msgs":[Ljavax/mail/Message;
    :cond_6
    const-string v9, "EXPUNGE"

    invoke-virtual {v5, v9}, Lcom/sun/mail/imap/protocol/IMAPResponse;->keyEquals(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_9

    .line 2107
    invoke-virtual {v5}, Lcom/sun/mail/imap/protocol/IMAPResponse;->getNumber()I

    move-result v9

    invoke-virtual {p0, v9}, Lcom/sun/mail/imap/IMAPFolder;->getMessageBySeqNumber(I)Lcom/sun/mail/imap/IMAPMessage;

    move-result-object v7

    .line 2108
    .restart local v7    # "msg":Lcom/sun/mail/imap/IMAPMessage;
    invoke-virtual {v7, v11}, Lcom/sun/mail/imap/IMAPMessage;->setExpunged(Z)V

    .line 2112
    invoke-virtual {v7}, Lcom/sun/mail/imap/IMAPMessage;->getMessageNumber()I

    move-result v4

    .restart local v4    # "i":I
    :goto_2
    iget v9, p0, Lcom/sun/mail/imap/IMAPFolder;->total:I

    if-ge v4, v9, :cond_8

    .line 2115
    iget-object v9, p0, Lcom/sun/mail/imap/IMAPFolder;->messageCache:Ljava/util/Vector;

    invoke-virtual {v9, v4}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/sun/mail/imap/IMAPMessage;

    .line 2116
    .local v6, "m":Lcom/sun/mail/imap/IMAPMessage;
    invoke-virtual {v6}, Lcom/sun/mail/imap/IMAPMessage;->isExpunged()Z

    move-result v9

    if-eqz v9, :cond_7

    .line 2112
    :goto_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 2120
    :cond_7
    invoke-virtual {v6}, Lcom/sun/mail/imap/IMAPMessage;->getSequenceNumber()I

    move-result v9

    add-int/lit8 v9, v9, -0x1

    invoke-virtual {v6, v9}, Lcom/sun/mail/imap/IMAPMessage;->setSequenceNumber(I)V

    goto :goto_3

    .line 2124
    .end local v6    # "m":Lcom/sun/mail/imap/IMAPMessage;
    :cond_8
    iget v9, p0, Lcom/sun/mail/imap/IMAPFolder;->realTotal:I

    add-int/lit8 v9, v9, -0x1

    iput v9, p0, Lcom/sun/mail/imap/IMAPFolder;->realTotal:I

    .line 2126
    iget-boolean v9, p0, Lcom/sun/mail/imap/IMAPFolder;->doExpungeNotification:Z

    if-eqz v9, :cond_2

    .line 2128
    new-array v8, v11, [Ljavax/mail/Message;

    aput-object v7, v8, v10

    .line 2129
    .restart local v8    # "msgs":[Ljavax/mail/Message;
    invoke-virtual {p0, v10, v8}, Lcom/sun/mail/imap/IMAPFolder;->notifyMessageRemovedListeners(Z[Ljavax/mail/Message;)V

    goto/16 :goto_0

    .line 2132
    .end local v4    # "i":I
    .end local v7    # "msg":Lcom/sun/mail/imap/IMAPMessage;
    .end local v8    # "msgs":[Ljavax/mail/Message;
    :cond_9
    const-string v9, "FETCH"

    invoke-virtual {v5, v9}, Lcom/sun/mail/imap/protocol/IMAPResponse;->keyEquals(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_b

    move-object v2, v5

    .line 2135
    check-cast v2, Lcom/sun/mail/imap/protocol/FetchResponse;

    .line 2137
    .local v2, "f":Lcom/sun/mail/imap/protocol/FetchResponse;
    sget-object v9, Lcom/sun/mail/imap/IMAPFolder;->class$javax$mail$Flags:Ljava/lang/Class;

    if-nez v9, :cond_a

    const-string v9, "javax.mail.Flags"

    invoke-static {v9}, Lcom/sun/mail/imap/IMAPFolder;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v9

    sput-object v9, Lcom/sun/mail/imap/IMAPFolder;->class$javax$mail$Flags:Ljava/lang/Class;

    :goto_4
    invoke-virtual {v2, v9}, Lcom/sun/mail/imap/protocol/FetchResponse;->getItem(Ljava/lang/Class;)Lcom/sun/mail/imap/protocol/Item;

    move-result-object v3

    check-cast v3, Ljavax/mail/Flags;

    .line 2139
    .local v3, "flags":Ljavax/mail/Flags;
    if-eqz v3, :cond_2

    .line 2140
    invoke-virtual {v2}, Lcom/sun/mail/imap/protocol/FetchResponse;->getNumber()I

    move-result v9

    invoke-virtual {p0, v9}, Lcom/sun/mail/imap/IMAPFolder;->getMessageBySeqNumber(I)Lcom/sun/mail/imap/IMAPMessage;

    move-result-object v7

    .line 2141
    .restart local v7    # "msg":Lcom/sun/mail/imap/IMAPMessage;
    if-eqz v7, :cond_2

    .line 2142
    invoke-virtual {v7, v3}, Lcom/sun/mail/imap/IMAPMessage;->_setFlags(Ljavax/mail/Flags;)V

    .line 2143
    invoke-virtual {p0, v11, v7}, Lcom/sun/mail/imap/IMAPFolder;->notifyMessageChangedListeners(ILjavax/mail/Message;)V

    goto/16 :goto_0

    .line 2137
    .end local v3    # "flags":Ljavax/mail/Flags;
    .end local v7    # "msg":Lcom/sun/mail/imap/IMAPMessage;
    :cond_a
    sget-object v9, Lcom/sun/mail/imap/IMAPFolder;->class$javax$mail$Flags:Ljava/lang/Class;

    goto :goto_4

    .line 2148
    .end local v2    # "f":Lcom/sun/mail/imap/protocol/FetchResponse;
    :cond_b
    const-string v9, "RECENT"

    invoke-virtual {v5, v9}, Lcom/sun/mail/imap/protocol/IMAPResponse;->keyEquals(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_2

    .line 2150
    invoke-virtual {v5}, Lcom/sun/mail/imap/protocol/IMAPResponse;->getNumber()I

    move-result v9

    iput v9, p0, Lcom/sun/mail/imap/IMAPFolder;->recent:I

    goto/16 :goto_0
.end method

.method handleResponses([Lcom/sun/mail/iap/Response;)V
    .locals 2
    .param p1, "r"    # [Lcom/sun/mail/iap/Response;

    .prologue
    .line 2161
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_1

    .line 2162
    aget-object v1, p1, v0

    if-eqz v1, :cond_0

    .line 2163
    aget-object v1, p1, v0

    invoke-virtual {p0, v1}, Lcom/sun/mail/imap/IMAPFolder;->handleResponse(Lcom/sun/mail/iap/Response;)V

    .line 2161
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 2165
    :cond_1
    return-void
.end method

.method public declared-synchronized hasNewMessages()Z
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 669
    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/sun/mail/imap/IMAPFolder;->checkExists()V

    .line 671
    iget-boolean v5, p0, Lcom/sun/mail/imap/IMAPFolder;->opened:Z

    if-eqz v5, :cond_1

    .line 673
    iget-object v5, p0, Lcom/sun/mail/imap/IMAPFolder;->messageCacheLock:Ljava/lang/Object;

    monitor-enter v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 676
    const/4 v6, 0x1

    :try_start_1
    invoke-direct {p0, v6}, Lcom/sun/mail/imap/IMAPFolder;->keepConnectionAlive(Z)V
    :try_end_1
    .catch Lcom/sun/mail/iap/ConnectionException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lcom/sun/mail/iap/ProtocolException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 682
    :try_start_2
    monitor-exit v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 683
    :try_start_3
    iget v5, p0, Lcom/sun/mail/imap/IMAPFolder;->recent:I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    if-lez v5, :cond_0

    .line 710
    :goto_0
    monitor-exit p0

    return v3

    .line 677
    :catch_0
    move-exception v1

    .line 678
    .local v1, "cex":Lcom/sun/mail/iap/ConnectionException;
    :try_start_4
    new-instance v3, Ljavax/mail/FolderClosedException;

    invoke-virtual {v1}, Lcom/sun/mail/iap/ConnectionException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, p0, v4}, Ljavax/mail/FolderClosedException;-><init>(Ljavax/mail/Folder;Ljava/lang/String;)V

    throw v3

    .line 682
    .end local v1    # "cex":Lcom/sun/mail/iap/ConnectionException;
    :catchall_0
    move-exception v3

    monitor-exit v5
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :try_start_5
    throw v3
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 669
    :catchall_1
    move-exception v3

    monitor-exit p0

    throw v3

    .line 679
    :catch_1
    move-exception v2

    .line 680
    .local v2, "pex":Lcom/sun/mail/iap/ProtocolException;
    :try_start_6
    new-instance v3, Ljavax/mail/MessagingException;

    invoke-virtual {v2}, Lcom/sun/mail/iap/ProtocolException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4, v2}, Ljavax/mail/MessagingException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v3
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .end local v2    # "pex":Lcom/sun/mail/iap/ProtocolException;
    :cond_0
    move v3, v4

    .line 683
    goto :goto_0

    .line 689
    :cond_1
    :try_start_7
    new-instance v3, Lcom/sun/mail/imap/IMAPFolder$7;

    invoke-direct {v3, p0}, Lcom/sun/mail/imap/IMAPFolder$7;-><init>(Lcom/sun/mail/imap/IMAPFolder;)V

    invoke-virtual {p0, v3}, Lcom/sun/mail/imap/IMAPFolder;->doCommandIgnoreFailure(Lcom/sun/mail/imap/IMAPFolder$ProtocolCommand;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    .line 707
    .local v0, "b":Ljava/lang/Boolean;
    if-nez v0, :cond_2

    move v3, v4

    .line 709
    goto :goto_0

    .line 710
    :cond_2
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    move-result v3

    goto :goto_0
.end method

.method public declared-synchronized isOpen()Z
    .locals 2

    .prologue
    .line 1031
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/sun/mail/imap/IMAPFolder;->messageCacheLock:Ljava/lang/Object;

    monitor-enter v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 1033
    :try_start_1
    iget-boolean v0, p0, Lcom/sun/mail/imap/IMAPFolder;->opened:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v0, :cond_0

    .line 1035
    const/4 v0, 0x0

    :try_start_2
    invoke-direct {p0, v0}, Lcom/sun/mail/imap/IMAPFolder;->keepConnectionAlive(Z)V
    :try_end_2
    .catch Lcom/sun/mail/iap/ProtocolException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1038
    :cond_0
    :goto_0
    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1040
    :try_start_4
    iget-boolean v0, p0, Lcom/sun/mail/imap/IMAPFolder;->opened:Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    monitor-exit p0

    return v0

    .line 1038
    :catchall_0
    move-exception v0

    :try_start_5
    monitor-exit v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :try_start_6
    throw v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 1031
    :catchall_1
    move-exception v0

    monitor-exit p0

    throw v0

    .line 1036
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public isSubscribed()Z
    .locals 6

    .prologue
    .line 575
    const/4 v2, 0x0

    .line 577
    .local v2, "li":[Lcom/sun/mail/imap/protocol/ListInfo;
    iget-boolean v4, p0, Lcom/sun/mail/imap/IMAPFolder;->isNamespace:Z

    if-eqz v4, :cond_0

    iget-char v4, p0, Lcom/sun/mail/imap/IMAPFolder;->separator:C

    if-eqz v4, :cond_0

    .line 578
    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    iget-object v5, p0, Lcom/sun/mail/imap/IMAPFolder;->fullName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    iget-char v5, p0, Lcom/sun/mail/imap/IMAPFolder;->separator:C

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    .line 583
    .local v3, "lname":Ljava/lang/String;
    :goto_0
    :try_start_0
    new-instance v4, Lcom/sun/mail/imap/IMAPFolder$4;

    invoke-direct {v4, p0, v3}, Lcom/sun/mail/imap/IMAPFolder$4;-><init>(Lcom/sun/mail/imap/IMAPFolder;Ljava/lang/String;)V

    invoke-virtual {p0, v4}, Lcom/sun/mail/imap/IMAPFolder;->doProtocolCommand(Lcom/sun/mail/imap/IMAPFolder$ProtocolCommand;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Lcom/sun/mail/imap/protocol/ListInfo;

    move-object v0, v4

    check-cast v0, [Lcom/sun/mail/imap/protocol/ListInfo;

    move-object v2, v0
    :try_end_0
    .catch Lcom/sun/mail/iap/ProtocolException; {:try_start_0 .. :try_end_0} :catch_0

    .line 592
    :goto_1
    if-eqz v2, :cond_1

    .line 593
    invoke-direct {p0, v2, v3}, Lcom/sun/mail/imap/IMAPFolder;->findName([Lcom/sun/mail/imap/protocol/ListInfo;Ljava/lang/String;)I

    move-result v1

    .line 594
    .local v1, "i":I
    aget-object v4, v2, v1

    iget-boolean v4, v4, Lcom/sun/mail/imap/protocol/ListInfo;->canOpen:Z

    .line 596
    .end local v1    # "i":I
    :goto_2
    return v4

    .line 580
    .end local v3    # "lname":Ljava/lang/String;
    :cond_0
    iget-object v3, p0, Lcom/sun/mail/imap/IMAPFolder;->fullName:Ljava/lang/String;

    .restart local v3    # "lname":Ljava/lang/String;
    goto :goto_0

    .line 596
    :cond_1
    const/4 v4, 0x0

    goto :goto_2

    .line 589
    :catch_0
    move-exception v4

    goto :goto_1
.end method

.method public list(Ljava/lang/String;)[Ljavax/mail/Folder;
    .locals 1
    .param p1, "pattern"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 480
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/sun/mail/imap/IMAPFolder;->doList(Ljava/lang/String;Z)[Ljavax/mail/Folder;

    move-result-object v0

    return-object v0
.end method

.method public listRights(Ljava/lang/String;)[Lcom/sun/mail/imap/Rights;
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 1988
    const-string v0, "ACL not supported"

    new-instance v1, Lcom/sun/mail/imap/IMAPFolder$16;

    invoke-direct {v1, p0, p1}, Lcom/sun/mail/imap/IMAPFolder$16;-><init>(Lcom/sun/mail/imap/IMAPFolder;Ljava/lang/String;)V

    invoke-virtual {p0, v0, v1}, Lcom/sun/mail/imap/IMAPFolder;->doOptionalCommand(Ljava/lang/String;Lcom/sun/mail/imap/IMAPFolder$ProtocolCommand;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sun/mail/imap/Rights;

    check-cast v0, [Lcom/sun/mail/imap/Rights;

    return-object v0
.end method

.method public listSubscribed(Ljava/lang/String;)[Ljavax/mail/Folder;
    .locals 1
    .param p1, "pattern"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 487
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/sun/mail/imap/IMAPFolder;->doList(Ljava/lang/String;Z)[Ljavax/mail/Folder;

    move-result-object v0

    return-object v0
.end method

.method public myRights()Lcom/sun/mail/imap/Rights;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 2005
    const-string v0, "ACL not supported"

    new-instance v1, Lcom/sun/mail/imap/IMAPFolder$17;

    invoke-direct {v1, p0}, Lcom/sun/mail/imap/IMAPFolder$17;-><init>(Lcom/sun/mail/imap/IMAPFolder;)V

    invoke-virtual {p0, v0, v1}, Lcom/sun/mail/imap/IMAPFolder;->doOptionalCommand(Ljava/lang/String;Lcom/sun/mail/imap/IMAPFolder$ProtocolCommand;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sun/mail/imap/Rights;

    return-object v0
.end method

.method public declared-synchronized open(I)V
    .locals 10
    .param p1, "mode"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .prologue
    const/4 v8, 0x1

    .line 791
    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/sun/mail/imap/IMAPFolder;->checkClosed()V

    .line 793
    const/4 v3, 0x0

    .line 795
    .local v3, "mi":Lcom/sun/mail/imap/protocol/MailboxInfo;
    iget-object v5, p0, Lcom/sun/mail/imap/IMAPFolder;->store:Ljavax/mail/Store;

    check-cast v5, Lcom/sun/mail/imap/IMAPStore;

    invoke-virtual {v5, p0}, Lcom/sun/mail/imap/IMAPStore;->getProtocol(Lcom/sun/mail/imap/IMAPFolder;)Lcom/sun/mail/imap/protocol/IMAPProtocol;

    move-result-object v5

    iput-object v5, p0, Lcom/sun/mail/imap/IMAPFolder;->protocol:Lcom/sun/mail/imap/protocol/IMAPProtocol;

    .line 797
    const/4 v1, 0x0

    .line 799
    .local v1, "exc":Lcom/sun/mail/iap/CommandFailedException;
    iget-object v6, p0, Lcom/sun/mail/imap/IMAPFolder;->messageCacheLock:Ljava/lang/Object;

    monitor-enter v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 807
    :try_start_1
    iget-object v5, p0, Lcom/sun/mail/imap/IMAPFolder;->protocol:Lcom/sun/mail/imap/protocol/IMAPProtocol;

    invoke-virtual {v5, p0}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->addResponseHandler(Lcom/sun/mail/iap/ResponseHandler;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 810
    if-ne p1, v8, :cond_1

    .line 811
    :try_start_2
    iget-object v5, p0, Lcom/sun/mail/imap/IMAPFolder;->protocol:Lcom/sun/mail/imap/protocol/IMAPProtocol;

    iget-object v7, p0, Lcom/sun/mail/imap/IMAPFolder;->fullName:Ljava/lang/String;

    invoke-virtual {v5, v7}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->examine(Ljava/lang/String;)Lcom/sun/mail/imap/protocol/MailboxInfo;
    :try_end_2
    .catch Lcom/sun/mail/iap/CommandFailedException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Lcom/sun/mail/iap/ProtocolException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move-result-object v3

    .line 833
    :goto_0
    :try_start_3
    iget v5, v3, Lcom/sun/mail/imap/protocol/MailboxInfo;->mode:I

    if-eq v5, p1, :cond_0

    .line 834
    const/4 v5, 0x2

    if-ne p1, v5, :cond_2

    iget v5, v3, Lcom/sun/mail/imap/protocol/MailboxInfo;->mode:I

    if-ne v5, v8, :cond_2

    iget-object v5, p0, Lcom/sun/mail/imap/IMAPFolder;->store:Ljavax/mail/Store;

    check-cast v5, Lcom/sun/mail/imap/IMAPStore;

    invoke-virtual {v5}, Lcom/sun/mail/imap/IMAPStore;->allowReadOnlySelect()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 861
    :cond_0
    const/4 v5, 0x1

    iput-boolean v5, p0, Lcom/sun/mail/imap/IMAPFolder;->opened:Z

    .line 862
    const/4 v5, 0x0

    iput-boolean v5, p0, Lcom/sun/mail/imap/IMAPFolder;->reallyClosed:Z

    .line 863
    iget v5, v3, Lcom/sun/mail/imap/protocol/MailboxInfo;->mode:I

    iput v5, p0, Lcom/sun/mail/imap/IMAPFolder;->mode:I

    .line 864
    iget-object v5, v3, Lcom/sun/mail/imap/protocol/MailboxInfo;->availableFlags:Ljavax/mail/Flags;

    iput-object v5, p0, Lcom/sun/mail/imap/IMAPFolder;->availableFlags:Ljavax/mail/Flags;

    .line 865
    iget-object v5, v3, Lcom/sun/mail/imap/protocol/MailboxInfo;->permanentFlags:Ljavax/mail/Flags;

    iput-object v5, p0, Lcom/sun/mail/imap/IMAPFolder;->permanentFlags:Ljavax/mail/Flags;

    .line 866
    iget v5, v3, Lcom/sun/mail/imap/protocol/MailboxInfo;->total:I

    iput v5, p0, Lcom/sun/mail/imap/IMAPFolder;->realTotal:I

    iput v5, p0, Lcom/sun/mail/imap/IMAPFolder;->total:I

    .line 867
    iget v5, v3, Lcom/sun/mail/imap/protocol/MailboxInfo;->recent:I

    iput v5, p0, Lcom/sun/mail/imap/IMAPFolder;->recent:I

    .line 868
    iget v5, v3, Lcom/sun/mail/imap/protocol/MailboxInfo;->uidvalidity:I

    iput v5, p0, Lcom/sun/mail/imap/IMAPFolder;->uidvalidity:I

    .line 869
    iget v5, v3, Lcom/sun/mail/imap/protocol/MailboxInfo;->uidnext:I

    iput v5, p0, Lcom/sun/mail/imap/IMAPFolder;->uidnext:I

    .line 872
    new-instance v5, Ljava/util/Vector;

    iget v7, p0, Lcom/sun/mail/imap/IMAPFolder;->total:I

    invoke-direct {v5, v7}, Ljava/util/Vector;-><init>(I)V

    iput-object v5, p0, Lcom/sun/mail/imap/IMAPFolder;->messageCache:Ljava/util/Vector;

    .line 874
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    iget v5, p0, Lcom/sun/mail/imap/IMAPFolder;->total:I

    if-ge v2, v5, :cond_3

    .line 875
    iget-object v5, p0, Lcom/sun/mail/imap/IMAPFolder;->messageCache:Ljava/util/Vector;

    new-instance v7, Lcom/sun/mail/imap/IMAPMessage;

    add-int/lit8 v8, v2, 0x1

    add-int/lit8 v9, v2, 0x1

    invoke-direct {v7, p0, v8, v9}, Lcom/sun/mail/imap/IMAPMessage;-><init>(Lcom/sun/mail/imap/IMAPFolder;II)V

    invoke-virtual {v5, v7}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 874
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 813
    .end local v2    # "i":I
    :cond_1
    :try_start_4
    iget-object v5, p0, Lcom/sun/mail/imap/IMAPFolder;->protocol:Lcom/sun/mail/imap/protocol/IMAPProtocol;

    iget-object v7, p0, Lcom/sun/mail/imap/IMAPFolder;->fullName:Ljava/lang/String;

    invoke-virtual {v5, v7}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->select(Ljava/lang/String;)Lcom/sun/mail/imap/protocol/MailboxInfo;
    :try_end_4
    .catch Lcom/sun/mail/iap/CommandFailedException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Lcom/sun/mail/iap/ProtocolException; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    move-result-object v3

    goto :goto_0

    .line 814
    :catch_0
    move-exception v0

    .line 816
    .local v0, "cex":Lcom/sun/mail/iap/CommandFailedException;
    const/4 v5, 0x1

    :try_start_5
    invoke-direct {p0, v5}, Lcom/sun/mail/imap/IMAPFolder;->releaseProtocol(Z)V

    .line 817
    const/4 v5, 0x0

    iput-object v5, p0, Lcom/sun/mail/imap/IMAPFolder;->protocol:Lcom/sun/mail/imap/protocol/IMAPProtocol;

    .line 818
    move-object v1, v0

    .line 819
    monitor-exit v6
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 884
    .end local v0    # "cex":Lcom/sun/mail/iap/CommandFailedException;
    :goto_2
    if-eqz v1, :cond_5

    .line 885
    :try_start_6
    invoke-direct {p0}, Lcom/sun/mail/imap/IMAPFolder;->checkExists()V

    .line 887
    iget v5, p0, Lcom/sun/mail/imap/IMAPFolder;->type:I

    and-int/lit8 v5, v5, 0x1

    if-nez v5, :cond_4

    .line 888
    new-instance v5, Ljavax/mail/MessagingException;

    const-string v6, "folder cannot contain messages"

    invoke-direct {v5, v6}, Ljavax/mail/MessagingException;-><init>(Ljava/lang/String;)V

    throw v5
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 791
    .end local v1    # "exc":Lcom/sun/mail/iap/CommandFailedException;
    .end local v3    # "mi":Lcom/sun/mail/imap/protocol/MailboxInfo;
    :catchall_0
    move-exception v5

    monitor-exit p0

    throw v5

    .line 820
    .restart local v1    # "exc":Lcom/sun/mail/iap/CommandFailedException;
    .restart local v3    # "mi":Lcom/sun/mail/imap/protocol/MailboxInfo;
    :catch_1
    move-exception v4

    .line 823
    .local v4, "pex":Lcom/sun/mail/iap/ProtocolException;
    :try_start_7
    iget-object v5, p0, Lcom/sun/mail/imap/IMAPFolder;->protocol:Lcom/sun/mail/imap/protocol/IMAPProtocol;

    invoke-virtual {v5}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->logout()V
    :try_end_7
    .catch Lcom/sun/mail/iap/ProtocolException; {:try_start_7 .. :try_end_7} :catch_2
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    .line 827
    const/4 v5, 0x0

    :try_start_8
    invoke-direct {p0, v5}, Lcom/sun/mail/imap/IMAPFolder;->releaseProtocol(Z)V

    .line 828
    const/4 v5, 0x0

    iput-object v5, p0, Lcom/sun/mail/imap/IMAPFolder;->protocol:Lcom/sun/mail/imap/protocol/IMAPProtocol;

    .line 829
    new-instance v5, Ljavax/mail/MessagingException;

    invoke-virtual {v4}, Lcom/sun/mail/iap/ProtocolException;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v5, v7, v4}, Ljavax/mail/MessagingException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v5

    .line 877
    .end local v4    # "pex":Lcom/sun/mail/iap/ProtocolException;
    :catchall_1
    move-exception v5

    monitor-exit v6
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    :try_start_9
    throw v5
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    .line 824
    .restart local v4    # "pex":Lcom/sun/mail/iap/ProtocolException;
    :catch_2
    move-exception v5

    .line 827
    const/4 v5, 0x0

    :try_start_a
    invoke-direct {p0, v5}, Lcom/sun/mail/imap/IMAPFolder;->releaseProtocol(Z)V

    .line 828
    const/4 v5, 0x0

    iput-object v5, p0, Lcom/sun/mail/imap/IMAPFolder;->protocol:Lcom/sun/mail/imap/protocol/IMAPProtocol;

    .line 829
    new-instance v5, Ljavax/mail/MessagingException;

    invoke-virtual {v4}, Lcom/sun/mail/iap/ProtocolException;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v5, v7, v4}, Ljavax/mail/MessagingException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v5

    .line 827
    :catchall_2
    move-exception v5

    const/4 v5, 0x0

    invoke-direct {p0, v5}, Lcom/sun/mail/imap/IMAPFolder;->releaseProtocol(Z)V

    .line 828
    const/4 v5, 0x0

    iput-object v5, p0, Lcom/sun/mail/imap/IMAPFolder;->protocol:Lcom/sun/mail/imap/protocol/IMAPProtocol;

    .line 829
    new-instance v5, Ljavax/mail/MessagingException;

    invoke-virtual {v4}, Lcom/sun/mail/iap/ProtocolException;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v5, v7, v4}, Ljavax/mail/MessagingException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v5
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    .line 840
    .end local v4    # "pex":Lcom/sun/mail/iap/ProtocolException;
    :cond_2
    :try_start_b
    iget-object v5, p0, Lcom/sun/mail/imap/IMAPFolder;->protocol:Lcom/sun/mail/imap/protocol/IMAPProtocol;

    invoke-virtual {v5}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->close()V

    .line 841
    const/4 v5, 0x1

    invoke-direct {p0, v5}, Lcom/sun/mail/imap/IMAPFolder;->releaseProtocol(Z)V
    :try_end_b
    .catch Lcom/sun/mail/iap/ProtocolException; {:try_start_b .. :try_end_b} :catch_3
    .catchall {:try_start_b .. :try_end_b} :catchall_3

    .line 852
    const/4 v5, 0x0

    :try_start_c
    iput-object v5, p0, Lcom/sun/mail/imap/IMAPFolder;->protocol:Lcom/sun/mail/imap/protocol/IMAPProtocol;

    .line 853
    new-instance v5, Ljavax/mail/ReadOnlyFolderException;

    const-string v7, "Cannot open in desired mode"

    invoke-direct {v5, p0, v7}, Ljavax/mail/ReadOnlyFolderException;-><init>(Ljavax/mail/Folder;Ljava/lang/String;)V

    throw v5
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_1

    .line 842
    :catch_3
    move-exception v4

    .line 845
    .restart local v4    # "pex":Lcom/sun/mail/iap/ProtocolException;
    :try_start_d
    iget-object v5, p0, Lcom/sun/mail/imap/IMAPFolder;->protocol:Lcom/sun/mail/imap/protocol/IMAPProtocol;

    invoke-virtual {v5}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->logout()V
    :try_end_d
    .catch Lcom/sun/mail/iap/ProtocolException; {:try_start_d .. :try_end_d} :catch_4
    .catchall {:try_start_d .. :try_end_d} :catchall_4

    .line 849
    const/4 v5, 0x0

    :try_start_e
    invoke-direct {p0, v5}, Lcom/sun/mail/imap/IMAPFolder;->releaseProtocol(Z)V
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_3

    .line 852
    :goto_3
    const/4 v5, 0x0

    :try_start_f
    iput-object v5, p0, Lcom/sun/mail/imap/IMAPFolder;->protocol:Lcom/sun/mail/imap/protocol/IMAPProtocol;

    .line 853
    new-instance v5, Ljavax/mail/ReadOnlyFolderException;

    const-string v7, "Cannot open in desired mode"

    invoke-direct {v5, p0, v7}, Ljavax/mail/ReadOnlyFolderException;-><init>(Ljavax/mail/Folder;Ljava/lang/String;)V

    throw v5
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_1

    .line 846
    :catch_4
    move-exception v5

    .line 849
    const/4 v5, 0x0

    :try_start_10
    invoke-direct {p0, v5}, Lcom/sun/mail/imap/IMAPFolder;->releaseProtocol(Z)V
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_3

    goto :goto_3

    .line 852
    .end local v4    # "pex":Lcom/sun/mail/iap/ProtocolException;
    :catchall_3
    move-exception v5

    const/4 v5, 0x0

    :try_start_11
    iput-object v5, p0, Lcom/sun/mail/imap/IMAPFolder;->protocol:Lcom/sun/mail/imap/protocol/IMAPProtocol;

    .line 853
    new-instance v5, Ljavax/mail/ReadOnlyFolderException;

    const-string v7, "Cannot open in desired mode"

    invoke-direct {v5, p0, v7}, Ljavax/mail/ReadOnlyFolderException;-><init>(Ljavax/mail/Folder;Ljava/lang/String;)V

    throw v5
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_1

    .line 849
    .restart local v4    # "pex":Lcom/sun/mail/iap/ProtocolException;
    :catchall_4
    move-exception v5

    const/4 v7, 0x0

    :try_start_12
    invoke-direct {p0, v7}, Lcom/sun/mail/imap/IMAPFolder;->releaseProtocol(Z)V

    .line 850
    throw v5
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_3

    .line 877
    .end local v4    # "pex":Lcom/sun/mail/iap/ProtocolException;
    .restart local v2    # "i":I
    :cond_3
    :try_start_13
    monitor-exit v6
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_1

    goto/16 :goto_2

    .line 889
    .end local v2    # "i":I
    :cond_4
    :try_start_14
    new-instance v5, Ljavax/mail/MessagingException;

    invoke-virtual {v1}, Lcom/sun/mail/iap/CommandFailedException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6, v1}, Ljavax/mail/MessagingException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v5

    .line 893
    :cond_5
    const/4 v5, 0x1

    invoke-virtual {p0, v5}, Lcom/sun/mail/imap/IMAPFolder;->notifyConnectionListeners(I)V
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_0

    .line 894
    monitor-exit p0

    return-void
.end method

.method protected declared-synchronized releaseStoreProtocol(Lcom/sun/mail/imap/protocol/IMAPProtocol;)V
    .locals 1
    .param p1, "p"    # Lcom/sun/mail/imap/protocol/IMAPProtocol;

    .prologue
    .line 2399
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/sun/mail/imap/IMAPFolder;->protocol:Lcom/sun/mail/imap/protocol/IMAPProtocol;

    if-eq p1, v0, :cond_0

    .line 2400
    iget-object v0, p0, Lcom/sun/mail/imap/IMAPFolder;->store:Ljavax/mail/Store;

    check-cast v0, Lcom/sun/mail/imap/IMAPStore;

    invoke-virtual {v0, p1}, Lcom/sun/mail/imap/IMAPStore;->releaseStoreProtocol(Lcom/sun/mail/imap/protocol/IMAPProtocol;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2401
    :cond_0
    monitor-exit p0

    return-void

    .line 2399
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public removeACL(Ljava/lang/String;)V
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 1933
    const-string v0, "ACL not supported"

    new-instance v1, Lcom/sun/mail/imap/IMAPFolder$15;

    invoke-direct {v1, p0, p1}, Lcom/sun/mail/imap/IMAPFolder$15;-><init>(Lcom/sun/mail/imap/IMAPFolder;Ljava/lang/String;)V

    invoke-virtual {p0, v0, v1}, Lcom/sun/mail/imap/IMAPFolder;->doOptionalCommand(Ljava/lang/String;Lcom/sun/mail/imap/IMAPFolder$ProtocolCommand;)Ljava/lang/Object;

    .line 1941
    return-void
.end method

.method public removeRights(Lcom/sun/mail/imap/ACL;)V
    .locals 1
    .param p1, "acl"    # Lcom/sun/mail/imap/ACL;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 1965
    const/16 v0, 0x2d

    invoke-direct {p0, p1, v0}, Lcom/sun/mail/imap/IMAPFolder;->setACL(Lcom/sun/mail/imap/ACL;C)V

    .line 1966
    return-void
.end method

.method public declared-synchronized renameTo(Ljavax/mail/Folder;)Z
    .locals 4
    .param p1, "f"    # Ljavax/mail/Folder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 766
    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/sun/mail/imap/IMAPFolder;->checkClosed()V

    .line 767
    invoke-direct {p0}, Lcom/sun/mail/imap/IMAPFolder;->checkExists()V

    .line 768
    invoke-virtual {p1}, Ljavax/mail/Folder;->getStore()Ljavax/mail/Store;

    move-result-object v2

    iget-object v3, p0, Lcom/sun/mail/imap/IMAPFolder;->store:Ljavax/mail/Store;

    if-eq v2, v3, :cond_0

    .line 769
    new-instance v1, Ljavax/mail/MessagingException;

    const-string v2, "Can\'t rename across Stores"

    invoke-direct {v1, v2}, Ljavax/mail/MessagingException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 766
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1

    .line 772
    :cond_0
    :try_start_1
    new-instance v2, Lcom/sun/mail/imap/IMAPFolder$9;

    invoke-direct {v2, p0, p1}, Lcom/sun/mail/imap/IMAPFolder$9;-><init>(Lcom/sun/mail/imap/IMAPFolder;Ljavax/mail/Folder;)V

    invoke-virtual {p0, v2}, Lcom/sun/mail/imap/IMAPFolder;->doCommandIgnoreFailure(Lcom/sun/mail/imap/IMAPFolder$ProtocolCommand;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    .line 779
    .local v0, "ret":Ljava/lang/Object;
    if-nez v0, :cond_1

    .line 784
    :goto_0
    monitor-exit p0

    return v1

    .line 782
    :cond_1
    const/4 v1, 0x0

    :try_start_2
    iput-boolean v1, p0, Lcom/sun/mail/imap/IMAPFolder;->exists:Z

    .line 783
    invoke-virtual {p0, p1}, Lcom/sun/mail/imap/IMAPFolder;->notifyFolderRenamedListeners(Ljavax/mail/Folder;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 784
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public declared-synchronized search(Ljavax/mail/search/SearchTerm;)[Ljavax/mail/Message;
    .locals 9
    .param p1, "term"    # Ljavax/mail/search/SearchTerm;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 1521
    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/sun/mail/imap/IMAPFolder;->checkOpened()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 1524
    const/4 v3, 0x0

    .line 1526
    .local v3, "matchMsgs":[Ljavax/mail/Message;
    :try_start_1
    iget-object v8, p0, Lcom/sun/mail/imap/IMAPFolder;->messageCacheLock:Ljava/lang/Object;

    monitor-enter v8
    :try_end_1
    .catch Lcom/sun/mail/iap/CommandFailedException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljavax/mail/search/SearchException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Lcom/sun/mail/iap/ConnectionException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Lcom/sun/mail/iap/ProtocolException; {:try_start_1 .. :try_end_1} :catch_3
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 1527
    :try_start_2
    iget-object v7, p0, Lcom/sun/mail/imap/IMAPFolder;->protocol:Lcom/sun/mail/imap/protocol/IMAPProtocol;

    invoke-virtual {v7, p1}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->search(Ljavax/mail/search/SearchTerm;)[I

    move-result-object v4

    .line 1528
    .local v4, "matches":[I
    if-eqz v4, :cond_0

    .line 1529
    array-length v7, v4

    new-array v3, v7, [Lcom/sun/mail/imap/IMAPMessage;

    .line 1531
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v7, v4

    if-ge v2, v7, :cond_0

    .line 1532
    aget v7, v4, v2

    invoke-virtual {p0, v7}, Lcom/sun/mail/imap/IMAPFolder;->getMessageBySeqNumber(I)Lcom/sun/mail/imap/IMAPMessage;

    move-result-object v7

    aput-object v7, v3, v2

    .line 1531
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1534
    .end local v2    # "i":I
    :cond_0
    monitor-exit v8
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1542
    .end local v3    # "matchMsgs":[Ljavax/mail/Message;
    .end local v4    # "matches":[I
    :goto_1
    monitor-exit p0

    return-object v3

    .line 1534
    .restart local v3    # "matchMsgs":[Ljavax/mail/Message;
    :catchall_0
    move-exception v7

    :try_start_3
    monitor-exit v8
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v7
    :try_end_4
    .catch Lcom/sun/mail/iap/CommandFailedException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljavax/mail/search/SearchException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Lcom/sun/mail/iap/ConnectionException; {:try_start_4 .. :try_end_4} :catch_2
    .catch Lcom/sun/mail/iap/ProtocolException; {:try_start_4 .. :try_end_4} :catch_3
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 1537
    :catch_0
    move-exception v1

    .line 1539
    .local v1, "cfx":Lcom/sun/mail/iap/CommandFailedException;
    :try_start_5
    invoke-super {p0, p1}, Ljavax/mail/Folder;->search(Ljavax/mail/search/SearchTerm;)[Ljavax/mail/Message;

    move-result-object v3

    goto :goto_1

    .line 1540
    .end local v1    # "cfx":Lcom/sun/mail/iap/CommandFailedException;
    :catch_1
    move-exception v6

    .line 1542
    .local v6, "sex":Ljavax/mail/search/SearchException;
    invoke-super {p0, p1}, Ljavax/mail/Folder;->search(Ljavax/mail/search/SearchTerm;)[Ljavax/mail/Message;

    move-result-object v3

    goto :goto_1

    .line 1543
    .end local v6    # "sex":Ljavax/mail/search/SearchException;
    :catch_2
    move-exception v0

    .line 1544
    .local v0, "cex":Lcom/sun/mail/iap/ConnectionException;
    new-instance v7, Ljavax/mail/FolderClosedException;

    invoke-virtual {v0}, Lcom/sun/mail/iap/ConnectionException;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, p0, v8}, Ljavax/mail/FolderClosedException;-><init>(Ljavax/mail/Folder;Ljava/lang/String;)V

    throw v7
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 1521
    .end local v0    # "cex":Lcom/sun/mail/iap/ConnectionException;
    .end local v3    # "matchMsgs":[Ljavax/mail/Message;
    :catchall_1
    move-exception v7

    monitor-exit p0

    throw v7

    .line 1545
    .restart local v3    # "matchMsgs":[Ljavax/mail/Message;
    :catch_3
    move-exception v5

    .line 1547
    .local v5, "pex":Lcom/sun/mail/iap/ProtocolException;
    :try_start_6
    new-instance v7, Ljavax/mail/MessagingException;

    invoke-virtual {v5}, Lcom/sun/mail/iap/ProtocolException;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8, v5}, Ljavax/mail/MessagingException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v7
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1
.end method

.method public declared-synchronized search(Ljavax/mail/search/SearchTerm;[Ljavax/mail/Message;)[Ljavax/mail/Message;
    .locals 11
    .param p1, "term"    # Ljavax/mail/search/SearchTerm;
    .param p2, "msgs"    # [Ljavax/mail/Message;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 1558
    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/sun/mail/imap/IMAPFolder;->checkOpened()V

    .line 1560
    array-length v8, p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-nez v8, :cond_0

    .line 1586
    .end local p2    # "msgs":[Ljavax/mail/Message;
    :goto_0
    monitor-exit p0

    return-object p2

    .line 1565
    .restart local p2    # "msgs":[Ljavax/mail/Message;
    :cond_0
    const/4 v3, 0x0

    .line 1567
    .local v3, "matchMsgs":[Ljavax/mail/Message;
    :try_start_1
    iget-object v9, p0, Lcom/sun/mail/imap/IMAPFolder;->messageCacheLock:Ljava/lang/Object;

    monitor-enter v9
    :try_end_1
    .catch Lcom/sun/mail/iap/CommandFailedException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljavax/mail/search/SearchException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Lcom/sun/mail/iap/ConnectionException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Lcom/sun/mail/iap/ProtocolException; {:try_start_1 .. :try_end_1} :catch_3
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 1568
    const/4 v8, 0x0

    :try_start_2
    invoke-static {p2, v8}, Lcom/sun/mail/imap/Utility;->toMessageSet([Ljavax/mail/Message;Lcom/sun/mail/imap/Utility$Condition;)[Lcom/sun/mail/imap/protocol/MessageSet;

    move-result-object v5

    .line 1569
    .local v5, "ms":[Lcom/sun/mail/imap/protocol/MessageSet;
    if-nez v5, :cond_1

    .line 1570
    new-instance v8, Ljavax/mail/MessageRemovedException;

    const-string v10, "Messages have been removed"

    invoke-direct {v8, v10}, Ljavax/mail/MessageRemovedException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 1578
    .end local v5    # "ms":[Lcom/sun/mail/imap/protocol/MessageSet;
    :catchall_0
    move-exception v8

    monitor-exit v9
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    throw v8
    :try_end_3
    .catch Lcom/sun/mail/iap/CommandFailedException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljavax/mail/search/SearchException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Lcom/sun/mail/iap/ConnectionException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Lcom/sun/mail/iap/ProtocolException; {:try_start_3 .. :try_end_3} :catch_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 1581
    :catch_0
    move-exception v1

    .line 1583
    .local v1, "cfx":Lcom/sun/mail/iap/CommandFailedException;
    :try_start_4
    invoke-super {p0, p1, p2}, Ljavax/mail/Folder;->search(Ljavax/mail/search/SearchTerm;[Ljavax/mail/Message;)[Ljavax/mail/Message;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    move-result-object p2

    goto :goto_0

    .line 1572
    .end local v1    # "cfx":Lcom/sun/mail/iap/CommandFailedException;
    .restart local v5    # "ms":[Lcom/sun/mail/imap/protocol/MessageSet;
    :cond_1
    :try_start_5
    iget-object v8, p0, Lcom/sun/mail/imap/IMAPFolder;->protocol:Lcom/sun/mail/imap/protocol/IMAPProtocol;

    invoke-virtual {v8, v5, p1}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->search([Lcom/sun/mail/imap/protocol/MessageSet;Ljavax/mail/search/SearchTerm;)[I

    move-result-object v4

    .line 1573
    .local v4, "matches":[I
    if-eqz v4, :cond_2

    .line 1574
    array-length v8, v4

    new-array v3, v8, [Lcom/sun/mail/imap/IMAPMessage;

    .line 1575
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    array-length v8, v4

    if-ge v2, v8, :cond_2

    .line 1576
    aget v8, v4, v2

    invoke-virtual {p0, v8}, Lcom/sun/mail/imap/IMAPFolder;->getMessageBySeqNumber(I)Lcom/sun/mail/imap/IMAPMessage;

    move-result-object v8

    aput-object v8, v3, v2

    .line 1575
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 1578
    .end local v2    # "i":I
    :cond_2
    monitor-exit v9
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    move-object p2, v3

    .line 1579
    goto :goto_0

    .line 1584
    .end local v4    # "matches":[I
    .end local v5    # "ms":[Lcom/sun/mail/imap/protocol/MessageSet;
    :catch_1
    move-exception v7

    .line 1586
    .local v7, "sex":Ljavax/mail/search/SearchException;
    :try_start_6
    invoke-super {p0, p1, p2}, Ljavax/mail/Folder;->search(Ljavax/mail/search/SearchTerm;[Ljavax/mail/Message;)[Ljavax/mail/Message;

    move-result-object p2

    goto :goto_0

    .line 1587
    .end local v7    # "sex":Ljavax/mail/search/SearchException;
    :catch_2
    move-exception v0

    .line 1588
    .local v0, "cex":Lcom/sun/mail/iap/ConnectionException;
    new-instance v8, Ljavax/mail/FolderClosedException;

    invoke-virtual {v0}, Lcom/sun/mail/iap/ConnectionException;->getMessage()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, p0, v9}, Ljavax/mail/FolderClosedException;-><init>(Ljavax/mail/Folder;Ljava/lang/String;)V

    throw v8
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 1558
    .end local v0    # "cex":Lcom/sun/mail/iap/ConnectionException;
    .end local v3    # "matchMsgs":[Ljavax/mail/Message;
    :catchall_1
    move-exception v8

    monitor-exit p0

    throw v8

    .line 1589
    .restart local v3    # "matchMsgs":[Ljavax/mail/Message;
    :catch_3
    move-exception v6

    .line 1591
    .local v6, "pex":Lcom/sun/mail/iap/ProtocolException;
    :try_start_7
    new-instance v8, Ljavax/mail/MessagingException;

    invoke-virtual {v6}, Lcom/sun/mail/iap/ProtocolException;->getMessage()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9, v6}, Ljavax/mail/MessagingException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v8
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1
.end method

.method public declared-synchronized setFlags([Ljavax/mail/Message;Ljavax/mail/Flags;Z)V
    .locals 6
    .param p1, "msgs"    # [Ljavax/mail/Message;
    .param p2, "flag"    # Ljavax/mail/Flags;
    .param p3, "value"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 910
    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/sun/mail/imap/IMAPFolder;->checkOpened()V

    .line 911
    invoke-direct {p0, p2}, Lcom/sun/mail/imap/IMAPFolder;->checkFlags(Ljavax/mail/Flags;)V

    .line 913
    array-length v3, p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-nez v3, :cond_0

    .line 929
    :goto_0
    monitor-exit p0

    return-void

    .line 916
    :cond_0
    :try_start_1
    iget-object v4, p0, Lcom/sun/mail/imap/IMAPFolder;->messageCacheLock:Ljava/lang/Object;

    monitor-enter v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 918
    const/4 v3, 0x0

    :try_start_2
    invoke-static {p1, v3}, Lcom/sun/mail/imap/Utility;->toMessageSet([Ljavax/mail/Message;Lcom/sun/mail/imap/Utility$Condition;)[Lcom/sun/mail/imap/protocol/MessageSet;

    move-result-object v1

    .line 919
    .local v1, "ms":[Lcom/sun/mail/imap/protocol/MessageSet;
    if-nez v1, :cond_1

    .line 920
    new-instance v3, Ljavax/mail/MessageRemovedException;

    const-string v5, "Messages have been removed"

    invoke-direct {v3, v5}, Ljavax/mail/MessageRemovedException;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_2
    .catch Lcom/sun/mail/iap/ConnectionException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Lcom/sun/mail/iap/ProtocolException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 923
    .end local v1    # "ms":[Lcom/sun/mail/imap/protocol/MessageSet;
    :catch_0
    move-exception v0

    .line 924
    .local v0, "cex":Lcom/sun/mail/iap/ConnectionException;
    :try_start_3
    new-instance v3, Ljavax/mail/FolderClosedException;

    invoke-virtual {v0}, Lcom/sun/mail/iap/ConnectionException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, p0, v5}, Ljavax/mail/FolderClosedException;-><init>(Ljavax/mail/Folder;Ljava/lang/String;)V

    throw v3

    .line 928
    .end local v0    # "cex":Lcom/sun/mail/iap/ConnectionException;
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 910
    :catchall_1
    move-exception v3

    monitor-exit p0

    throw v3

    .line 922
    .restart local v1    # "ms":[Lcom/sun/mail/imap/protocol/MessageSet;
    :cond_1
    :try_start_5
    iget-object v3, p0, Lcom/sun/mail/imap/IMAPFolder;->protocol:Lcom/sun/mail/imap/protocol/IMAPProtocol;

    invoke-virtual {v3, v1, p2, p3}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->storeFlags([Lcom/sun/mail/imap/protocol/MessageSet;Ljavax/mail/Flags;Z)V
    :try_end_5
    .catch Lcom/sun/mail/iap/ConnectionException; {:try_start_5 .. :try_end_5} :catch_0
    .catch Lcom/sun/mail/iap/ProtocolException; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 928
    :try_start_6
    monitor-exit v4

    goto :goto_0

    .line 925
    .end local v1    # "ms":[Lcom/sun/mail/imap/protocol/MessageSet;
    :catch_1
    move-exception v2

    .line 926
    .local v2, "pex":Lcom/sun/mail/iap/ProtocolException;
    new-instance v3, Ljavax/mail/MessagingException;

    invoke-virtual {v2}, Lcom/sun/mail/iap/ProtocolException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v5, v2}, Ljavax/mail/MessagingException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v3
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0
.end method

.method public setQuota(Ljavax/mail/Quota;)V
    .locals 2
    .param p1, "quota"    # Ljavax/mail/Quota;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 1885
    const-string v0, "QUOTA not supported"

    new-instance v1, Lcom/sun/mail/imap/IMAPFolder$13;

    invoke-direct {v1, p0, p1}, Lcom/sun/mail/imap/IMAPFolder$13;-><init>(Lcom/sun/mail/imap/IMAPFolder;Ljavax/mail/Quota;)V

    invoke-virtual {p0, v0, v1}, Lcom/sun/mail/imap/IMAPFolder;->doOptionalCommand(Ljava/lang/String;Lcom/sun/mail/imap/IMAPFolder$ProtocolCommand;)Ljava/lang/Object;

    .line 1893
    return-void
.end method

.method public setSubscribed(Z)V
    .locals 1
    .param p1, "subscribe"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 604
    new-instance v0, Lcom/sun/mail/imap/IMAPFolder$5;

    invoke-direct {v0, p0, p1}, Lcom/sun/mail/imap/IMAPFolder$5;-><init>(Lcom/sun/mail/imap/IMAPFolder;Z)V

    invoke-virtual {p0, v0}, Lcom/sun/mail/imap/IMAPFolder;->doCommandIgnoreFailure(Lcom/sun/mail/imap/IMAPFolder$ProtocolCommand;)Ljava/lang/Object;

    .line 613
    return-void
.end method
