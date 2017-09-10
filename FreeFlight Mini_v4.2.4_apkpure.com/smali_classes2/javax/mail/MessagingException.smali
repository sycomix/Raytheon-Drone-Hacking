.class public Ljavax/mail/MessagingException;
.super Ljava/lang/Exception;
.source "MessagingException.java"


# static fields
.field private static final serialVersionUID:J = -0x690b2c48c7581fd5L


# instance fields
.field private next:Ljava/lang/Exception;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 54
    invoke-direct {p0}, Ljava/lang/Exception;-><init>()V

    .line 55
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Ljavax/mail/MessagingException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 56
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "s"    # Ljava/lang/String;

    .prologue
    .line 64
    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 65
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Ljavax/mail/MessagingException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 66
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Exception;)V
    .locals 1
    .param p1, "s"    # Ljava/lang/String;
    .param p2, "e"    # Ljava/lang/Exception;

    .prologue
    .line 80
    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 81
    iput-object p2, p0, Ljavax/mail/MessagingException;->next:Ljava/lang/Exception;

    .line 82
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Ljavax/mail/MessagingException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 83
    return-void
.end method


# virtual methods
.method public declared-synchronized getCause()Ljava/lang/Throwable;
    .locals 1

    .prologue
    .line 103
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Ljavax/mail/MessagingException;->next:Ljava/lang/Exception;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getNextException()Ljava/lang/Exception;
    .locals 1

    .prologue
    .line 93
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Ljavax/mail/MessagingException;->next:Ljava/lang/Exception;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setNextException(Ljava/lang/Exception;)Z
    .locals 3
    .param p1, "ex"    # Ljava/lang/Exception;

    .prologue
    .line 116
    monitor-enter p0

    move-object v1, p0

    .line 118
    .local v1, "theEnd":Ljava/lang/Exception;
    :goto_0
    :try_start_0
    instance-of v2, v1, Ljavax/mail/MessagingException;

    if-eqz v2, :cond_0

    move-object v0, v1

    check-cast v0, Ljavax/mail/MessagingException;

    move-object v2, v0

    iget-object v2, v2, Ljavax/mail/MessagingException;->next:Ljava/lang/Exception;

    if-eqz v2, :cond_0

    .line 119
    check-cast v1, Ljavax/mail/MessagingException;

    .end local v1    # "theEnd":Ljava/lang/Exception;
    iget-object v1, v1, Ljavax/mail/MessagingException;->next:Ljava/lang/Exception;

    .line 120
    .restart local v1    # "theEnd":Ljava/lang/Exception;
    goto :goto_0

    .line 123
    :cond_0
    instance-of v2, v1, Ljavax/mail/MessagingException;

    if-eqz v2, :cond_1

    .line 124
    check-cast v1, Ljavax/mail/MessagingException;

    .end local v1    # "theEnd":Ljava/lang/Exception;
    iput-object p1, v1, Ljavax/mail/MessagingException;->next:Ljava/lang/Exception;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 125
    const/4 v2, 0x1

    .line 127
    :goto_1
    monitor-exit p0

    return v2

    .restart local v1    # "theEnd":Ljava/lang/Exception;
    :cond_1
    const/4 v2, 0x0

    goto :goto_1

    .line 116
    .end local v1    # "theEnd":Ljava/lang/Exception;
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public declared-synchronized toString()Ljava/lang/String;
    .locals 6

    .prologue
    .line 135
    monitor-enter p0

    :try_start_0
    invoke-super {p0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    .line 136
    .local v3, "s":Ljava/lang/String;
    iget-object v2, p0, Ljavax/mail/MessagingException;->next:Ljava/lang/Exception;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 137
    .local v2, "n":Ljava/lang/Exception;
    if-nez v2, :cond_0

    .line 150
    .end local v3    # "s":Ljava/lang/String;
    :goto_0
    monitor-exit p0

    return-object v3

    .line 139
    .restart local v3    # "s":Ljava/lang/String;
    :cond_0
    :try_start_1
    new-instance v4, Ljava/lang/StringBuffer;

    if-nez v3, :cond_1

    const-string v3, ""

    .end local v3    # "s":Ljava/lang/String;
    :cond_1
    invoke-direct {v4, v3}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 140
    .local v4, "sb":Ljava/lang/StringBuffer;
    :goto_1
    if-eqz v2, :cond_3

    .line 141
    const-string v5, ";\n  nested exception is:\n\t"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 142
    invoke-virtual {v2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 143
    instance-of v5, v2, Ljavax/mail/MessagingException;

    if-eqz v5, :cond_2

    .line 144
    move-object v0, v2

    check-cast v0, Ljavax/mail/MessagingException;

    move-object v1, v0

    .line 145
    .local v1, "mex":Ljavax/mail/MessagingException;
    iget-object v2, v1, Ljavax/mail/MessagingException;->next:Ljava/lang/Exception;

    .line 146
    goto :goto_1

    .line 147
    .end local v1    # "mex":Ljavax/mail/MessagingException;
    :cond_2
    const/4 v2, 0x0

    .line 149
    goto :goto_1

    .line 150
    :cond_3
    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v3

    goto :goto_0

    .line 135
    .end local v2    # "n":Ljava/lang/Exception;
    .end local v4    # "sb":Ljava/lang/StringBuffer;
    :catchall_0
    move-exception v5

    monitor-exit p0

    throw v5
.end method
