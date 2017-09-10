.class Lcom/sun/mail/imap/protocol/IMAPSaslAuthenticator$1;
.super Ljava/lang/Object;
.source "IMAPSaslAuthenticator.java"

# interfaces
.implements Ljavax/security/auth/callback/CallbackHandler;


# instance fields
.field private final this$0:Lcom/sun/mail/imap/protocol/IMAPSaslAuthenticator;

.field private final val$p0:Ljava/lang/String;

.field private final val$r0:Ljava/lang/String;

.field private final val$u0:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/sun/mail/imap/protocol/IMAPSaslAuthenticator;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 83
    iput-object p1, p0, Lcom/sun/mail/imap/protocol/IMAPSaslAuthenticator$1;->this$0:Lcom/sun/mail/imap/protocol/IMAPSaslAuthenticator;

    iput-object p2, p0, Lcom/sun/mail/imap/protocol/IMAPSaslAuthenticator$1;->val$u0:Ljava/lang/String;

    iput-object p3, p0, Lcom/sun/mail/imap/protocol/IMAPSaslAuthenticator$1;->val$p0:Ljava/lang/String;

    iput-object p4, p0, Lcom/sun/mail/imap/protocol/IMAPSaslAuthenticator$1;->val$r0:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public handle([Ljavax/security/auth/callback/Callback;)V
    .locals 9
    .param p1, "callbacks"    # [Ljavax/security/auth/callback/Callback;

    .prologue
    .line 84
    iget-object v6, p0, Lcom/sun/mail/imap/protocol/IMAPSaslAuthenticator$1;->this$0:Lcom/sun/mail/imap/protocol/IMAPSaslAuthenticator;

    invoke-static {v6}, Lcom/sun/mail/imap/protocol/IMAPSaslAuthenticator;->access$000(Lcom/sun/mail/imap/protocol/IMAPSaslAuthenticator;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 85
    iget-object v6, p0, Lcom/sun/mail/imap/protocol/IMAPSaslAuthenticator$1;->this$0:Lcom/sun/mail/imap/protocol/IMAPSaslAuthenticator;

    invoke-static {v6}, Lcom/sun/mail/imap/protocol/IMAPSaslAuthenticator;->access$100(Lcom/sun/mail/imap/protocol/IMAPSaslAuthenticator;)Ljava/io/PrintStream;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuffer;

    invoke-direct {v7}, Ljava/lang/StringBuffer;-><init>()V

    const-string v8, "IMAP SASL DEBUG: callback length: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v7

    array-length v8, p1

    invoke-virtual {v7, v8}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 87
    :cond_0
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v6, p1

    if-ge v1, v6, :cond_9

    .line 88
    iget-object v6, p0, Lcom/sun/mail/imap/protocol/IMAPSaslAuthenticator$1;->this$0:Lcom/sun/mail/imap/protocol/IMAPSaslAuthenticator;

    invoke-static {v6}, Lcom/sun/mail/imap/protocol/IMAPSaslAuthenticator;->access$000(Lcom/sun/mail/imap/protocol/IMAPSaslAuthenticator;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 89
    iget-object v6, p0, Lcom/sun/mail/imap/protocol/IMAPSaslAuthenticator$1;->this$0:Lcom/sun/mail/imap/protocol/IMAPSaslAuthenticator;

    invoke-static {v6}, Lcom/sun/mail/imap/protocol/IMAPSaslAuthenticator;->access$100(Lcom/sun/mail/imap/protocol/IMAPSaslAuthenticator;)Ljava/io/PrintStream;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuffer;

    invoke-direct {v7}, Ljava/lang/StringBuffer;-><init>()V

    const-string v8, "IMAP SASL DEBUG: callback "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v7

    const-string v8, ": "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v7

    aget-object v8, p1, v1

    invoke-virtual {v7, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 91
    :cond_1
    aget-object v6, p1, v1

    instance-of v6, v6, Ljavax/security/auth/callback/NameCallback;

    if-eqz v6, :cond_3

    .line 92
    aget-object v3, p1, v1

    check-cast v3, Ljavax/security/auth/callback/NameCallback;

    .line 93
    .local v3, "ncb":Ljavax/security/auth/callback/NameCallback;
    iget-object v6, p0, Lcom/sun/mail/imap/protocol/IMAPSaslAuthenticator$1;->val$u0:Ljava/lang/String;

    invoke-virtual {v3, v6}, Ljavax/security/auth/callback/NameCallback;->setName(Ljava/lang/String;)V

    .line 87
    .end local v3    # "ncb":Ljavax/security/auth/callback/NameCallback;
    :cond_2
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 94
    :cond_3
    aget-object v6, p1, v1

    instance-of v6, v6, Ljavax/security/auth/callback/PasswordCallback;

    if-eqz v6, :cond_4

    .line 95
    aget-object v4, p1, v1

    check-cast v4, Ljavax/security/auth/callback/PasswordCallback;

    .line 96
    .local v4, "pcb":Ljavax/security/auth/callback/PasswordCallback;
    iget-object v6, p0, Lcom/sun/mail/imap/protocol/IMAPSaslAuthenticator$1;->val$p0:Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/String;->toCharArray()[C

    move-result-object v6

    invoke-virtual {v4, v6}, Ljavax/security/auth/callback/PasswordCallback;->setPassword([C)V

    goto :goto_1

    .line 97
    .end local v4    # "pcb":Ljavax/security/auth/callback/PasswordCallback;
    :cond_4
    aget-object v6, p1, v1

    instance-of v6, v6, Ljavax/security/sasl/RealmCallback;

    if-eqz v6, :cond_6

    .line 98
    aget-object v5, p1, v1

    check-cast v5, Ljavax/security/sasl/RealmCallback;

    .line 99
    .local v5, "rcb":Ljavax/security/sasl/RealmCallback;
    iget-object v6, p0, Lcom/sun/mail/imap/protocol/IMAPSaslAuthenticator$1;->val$r0:Ljava/lang/String;

    if-eqz v6, :cond_5

    iget-object v6, p0, Lcom/sun/mail/imap/protocol/IMAPSaslAuthenticator$1;->val$r0:Ljava/lang/String;

    :goto_2
    invoke-virtual {v5, v6}, Ljavax/security/sasl/RealmCallback;->setText(Ljava/lang/String;)V

    goto :goto_1

    :cond_5
    invoke-virtual {v5}, Ljavax/security/sasl/RealmCallback;->getDefaultText()Ljava/lang/String;

    move-result-object v6

    goto :goto_2

    .line 101
    .end local v5    # "rcb":Ljavax/security/sasl/RealmCallback;
    :cond_6
    aget-object v6, p1, v1

    instance-of v6, v6, Ljavax/security/sasl/RealmChoiceCallback;

    if-eqz v6, :cond_2

    .line 102
    aget-object v5, p1, v1

    check-cast v5, Ljavax/security/sasl/RealmChoiceCallback;

    .line 104
    .local v5, "rcb":Ljavax/security/sasl/RealmChoiceCallback;
    iget-object v6, p0, Lcom/sun/mail/imap/protocol/IMAPSaslAuthenticator$1;->val$r0:Ljava/lang/String;

    if-nez v6, :cond_7

    .line 105
    invoke-virtual {v5}, Ljavax/security/sasl/RealmChoiceCallback;->getDefaultChoice()I

    move-result v6

    invoke-virtual {v5, v6}, Ljavax/security/sasl/RealmChoiceCallback;->setSelectedIndex(I)V

    goto :goto_1

    .line 108
    :cond_7
    invoke-virtual {v5}, Ljavax/security/sasl/RealmChoiceCallback;->getChoices()[Ljava/lang/String;

    move-result-object v0

    .line 109
    .local v0, "choices":[Ljava/lang/String;
    const/4 v2, 0x0

    .local v2, "k":I
    :goto_3
    array-length v6, v0

    if-ge v2, v6, :cond_2

    .line 110
    aget-object v6, v0, v2

    iget-object v7, p0, Lcom/sun/mail/imap/protocol/IMAPSaslAuthenticator$1;->val$r0:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_8

    .line 111
    invoke-virtual {v5, v2}, Ljavax/security/sasl/RealmChoiceCallback;->setSelectedIndex(I)V

    goto :goto_1

    .line 109
    :cond_8
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 118
    .end local v0    # "choices":[Ljava/lang/String;
    .end local v2    # "k":I
    .end local v5    # "rcb":Ljavax/security/sasl/RealmChoiceCallback;
    :cond_9
    return-void
.end method
