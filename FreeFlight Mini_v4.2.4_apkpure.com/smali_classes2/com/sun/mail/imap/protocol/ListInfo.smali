.class public Lcom/sun/mail/imap/protocol/ListInfo;
.super Ljava/lang/Object;
.source "ListInfo.java"


# static fields
.field public static final CHANGED:I = 0x1

.field public static final INDETERMINATE:I = 0x3

.field public static final UNCHANGED:I = 0x2


# instance fields
.field public attrs:[Ljava/lang/String;

.field public canOpen:Z

.field public changeState:I

.field public hasInferiors:Z

.field public name:Ljava/lang/String;

.field public separator:C


# direct methods
.method public constructor <init>(Lcom/sun/mail/imap/protocol/IMAPResponse;)V
    .locals 8
    .param p1, "r"    # Lcom/sun/mail/imap/protocol/IMAPResponse;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/mail/iap/ParsingException;
        }
    .end annotation

    .prologue
    const/4 v7, 0x2

    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/sun/mail/imap/protocol/ListInfo;->name:Ljava/lang/String;

    .line 44
    const/16 v3, 0x2f

    iput-char v3, p0, Lcom/sun/mail/imap/protocol/ListInfo;->separator:C

    .line 45
    iput-boolean v5, p0, Lcom/sun/mail/imap/protocol/ListInfo;->hasInferiors:Z

    .line 46
    iput-boolean v5, p0, Lcom/sun/mail/imap/protocol/ListInfo;->canOpen:Z

    .line 47
    const/4 v3, 0x3

    iput v3, p0, Lcom/sun/mail/imap/protocol/ListInfo;->changeState:I

    .line 55
    invoke-virtual {p1}, Lcom/sun/mail/imap/protocol/IMAPResponse;->readSimpleList()[Ljava/lang/String;

    move-result-object v1

    .line 57
    .local v1, "s":[Ljava/lang/String;
    new-instance v2, Ljava/util/Vector;

    invoke-direct {v2}, Ljava/util/Vector;-><init>()V

    .line 58
    .local v2, "v":Ljava/util/Vector;
    if-eqz v1, :cond_4

    .line 60
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v3, v1

    if-ge v0, v3, :cond_4

    .line 61
    aget-object v3, v1, v0

    const-string v4, "\\Marked"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 62
    iput v5, p0, Lcom/sun/mail/imap/protocol/ListInfo;->changeState:I

    .line 69
    :cond_0
    :goto_1
    aget-object v3, v1, v0

    invoke-virtual {v2, v3}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 60
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 63
    :cond_1
    aget-object v3, v1, v0

    const-string v4, "\\Unmarked"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 64
    iput v7, p0, Lcom/sun/mail/imap/protocol/ListInfo;->changeState:I

    goto :goto_1

    .line 65
    :cond_2
    aget-object v3, v1, v0

    const-string v4, "\\Noselect"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 66
    iput-boolean v6, p0, Lcom/sun/mail/imap/protocol/ListInfo;->canOpen:Z

    goto :goto_1

    .line 67
    :cond_3
    aget-object v3, v1, v0

    const-string v4, "\\Noinferiors"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 68
    iput-boolean v6, p0, Lcom/sun/mail/imap/protocol/ListInfo;->hasInferiors:Z

    goto :goto_1

    .line 72
    .end local v0    # "i":I
    :cond_4
    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    move-result v3

    new-array v3, v3, [Ljava/lang/String;

    iput-object v3, p0, Lcom/sun/mail/imap/protocol/ListInfo;->attrs:[Ljava/lang/String;

    .line 73
    iget-object v3, p0, Lcom/sun/mail/imap/protocol/ListInfo;->attrs:[Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/util/Vector;->copyInto([Ljava/lang/Object;)V

    .line 75
    invoke-virtual {p1}, Lcom/sun/mail/imap/protocol/IMAPResponse;->skipSpaces()V

    .line 76
    invoke-virtual {p1}, Lcom/sun/mail/imap/protocol/IMAPResponse;->readByte()B

    move-result v3

    const/16 v4, 0x22

    if-ne v3, v4, :cond_6

    .line 77
    invoke-virtual {p1}, Lcom/sun/mail/imap/protocol/IMAPResponse;->readByte()B

    move-result v3

    int-to-char v3, v3

    iput-char v3, p0, Lcom/sun/mail/imap/protocol/ListInfo;->separator:C

    const/16 v4, 0x5c

    if-ne v3, v4, :cond_5

    .line 79
    invoke-virtual {p1}, Lcom/sun/mail/imap/protocol/IMAPResponse;->readByte()B

    move-result v3

    int-to-char v3, v3

    iput-char v3, p0, Lcom/sun/mail/imap/protocol/ListInfo;->separator:C

    .line 80
    :cond_5
    invoke-virtual {p1, v5}, Lcom/sun/mail/imap/protocol/IMAPResponse;->skip(I)V

    .line 84
    :goto_2
    invoke-virtual {p1}, Lcom/sun/mail/imap/protocol/IMAPResponse;->skipSpaces()V

    .line 85
    invoke-virtual {p1}, Lcom/sun/mail/imap/protocol/IMAPResponse;->readAtomString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/sun/mail/imap/protocol/ListInfo;->name:Ljava/lang/String;

    .line 88
    iget-object v3, p0, Lcom/sun/mail/imap/protocol/ListInfo;->name:Ljava/lang/String;

    invoke-static {v3}, Lcom/sun/mail/imap/protocol/BASE64MailboxDecoder;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/sun/mail/imap/protocol/ListInfo;->name:Ljava/lang/String;

    .line 89
    return-void

    .line 82
    :cond_6
    invoke-virtual {p1, v7}, Lcom/sun/mail/imap/protocol/IMAPResponse;->skip(I)V

    goto :goto_2
.end method
