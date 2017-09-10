.class public Lorg/mortbay/util/MultiException;
.super Ljava/lang/Exception;
.source "MultiException.java"


# instance fields
.field private nested:Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 35
    const-string v0, "Multiple exceptions"

    invoke-direct {p0, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 36
    return-void
.end method


# virtual methods
.method public add(Ljava/lang/Throwable;)V
    .locals 4
    .param p1, "e"    # Ljava/lang/Throwable;

    .prologue
    .line 41
    instance-of v2, p1, Lorg/mortbay/util/MultiException;

    if-eqz v2, :cond_0

    move-object v1, p1

    .line 43
    check-cast v1, Lorg/mortbay/util/MultiException;

    .line 44
    .local v1, "me":Lorg/mortbay/util/MultiException;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v2, v1, Lorg/mortbay/util/MultiException;->nested:Ljava/lang/Object;

    invoke-static {v2}, Lorg/mortbay/util/LazyList;->size(Ljava/lang/Object;)I

    move-result v2

    if-ge v0, v2, :cond_1

    .line 45
    iget-object v2, p0, Lorg/mortbay/util/MultiException;->nested:Ljava/lang/Object;

    iget-object v3, v1, Lorg/mortbay/util/MultiException;->nested:Ljava/lang/Object;

    invoke-static {v3, v0}, Lorg/mortbay/util/LazyList;->get(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v3

    invoke-static {v2, v3}, Lorg/mortbay/util/LazyList;->add(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    iput-object v2, p0, Lorg/mortbay/util/MultiException;->nested:Ljava/lang/Object;

    .line 44
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 48
    .end local v0    # "i":I
    .end local v1    # "me":Lorg/mortbay/util/MultiException;
    :cond_0
    iget-object v2, p0, Lorg/mortbay/util/MultiException;->nested:Ljava/lang/Object;

    invoke-static {v2, p1}, Lorg/mortbay/util/LazyList;->add(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    iput-object v2, p0, Lorg/mortbay/util/MultiException;->nested:Ljava/lang/Object;

    .line 49
    :cond_1
    return-void
.end method

.method public getThrowable(I)Ljava/lang/Throwable;
    .locals 1
    .param p1, "i"    # I

    .prologue
    .line 66
    iget-object v0, p0, Lorg/mortbay/util/MultiException;->nested:Ljava/lang/Object;

    invoke-static {v0, p1}, Lorg/mortbay/util/LazyList;->get(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Throwable;

    return-object v0
.end method

.method public getThrowables()Ljava/util/List;
    .locals 1

    .prologue
    .line 60
    iget-object v0, p0, Lorg/mortbay/util/MultiException;->nested:Ljava/lang/Object;

    invoke-static {v0}, Lorg/mortbay/util/LazyList;->getList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public ifExceptionThrow()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 79
    iget-object v1, p0, Lorg/mortbay/util/MultiException;->nested:Ljava/lang/Object;

    invoke-static {v1}, Lorg/mortbay/util/LazyList;->size(Ljava/lang/Object;)I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 90
    :cond_0
    throw p0

    .line 84
    :pswitch_0
    iget-object v1, p0, Lorg/mortbay/util/MultiException;->nested:Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lorg/mortbay/util/LazyList;->get(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Throwable;

    .line 85
    .local v0, "th":Ljava/lang/Throwable;
    instance-of v1, v0, Ljava/lang/Error;

    if-eqz v1, :cond_1

    .line 86
    check-cast v0, Ljava/lang/Error;

    .end local v0    # "th":Ljava/lang/Throwable;
    throw v0

    .line 87
    .restart local v0    # "th":Ljava/lang/Throwable;
    :cond_1
    instance-of v1, v0, Ljava/lang/Exception;

    if-eqz v1, :cond_0

    .line 88
    check-cast v0, Ljava/lang/Exception;

    .end local v0    # "th":Ljava/lang/Throwable;
    throw v0

    .line 92
    :pswitch_1
    return-void

    .line 79
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public ifExceptionThrowMulti()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/mortbay/util/MultiException;
        }
    .end annotation

    .prologue
    .line 132
    iget-object v0, p0, Lorg/mortbay/util/MultiException;->nested:Ljava/lang/Object;

    invoke-static {v0}, Lorg/mortbay/util/LazyList;->size(Ljava/lang/Object;)I

    move-result v0

    if-lez v0, :cond_0

    .line 133
    throw p0

    .line 134
    :cond_0
    return-void
.end method

.method public ifExceptionThrowRuntime()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Error;
        }
    .end annotation

    .prologue
    .line 106
    iget-object v1, p0, Lorg/mortbay/util/MultiException;->nested:Ljava/lang/Object;

    invoke-static {v1}, Lorg/mortbay/util/LazyList;->size(Ljava/lang/Object;)I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 119
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 111
    :pswitch_0
    iget-object v1, p0, Lorg/mortbay/util/MultiException;->nested:Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lorg/mortbay/util/LazyList;->get(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Throwable;

    .line 112
    .local v0, "th":Ljava/lang/Throwable;
    instance-of v1, v0, Ljava/lang/Error;

    if-eqz v1, :cond_0

    .line 113
    check-cast v0, Ljava/lang/Error;

    .end local v0    # "th":Ljava/lang/Throwable;
    throw v0

    .line 114
    .restart local v0    # "th":Ljava/lang/Throwable;
    :cond_0
    instance-of v1, v0, Ljava/lang/RuntimeException;

    if-eqz v1, :cond_1

    .line 115
    check-cast v0, Ljava/lang/RuntimeException;

    .end local v0    # "th":Ljava/lang/Throwable;
    throw v0

    .line 117
    .restart local v0    # "th":Ljava/lang/Throwable;
    :cond_1
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 121
    .end local v0    # "th":Ljava/lang/Throwable;
    :pswitch_1
    return-void

    .line 106
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public printStackTrace()V
    .locals 2

    .prologue
    .line 148
    invoke-super {p0}, Ljava/lang/Exception;->printStackTrace()V

    .line 149
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lorg/mortbay/util/MultiException;->nested:Ljava/lang/Object;

    invoke-static {v1}, Lorg/mortbay/util/LazyList;->size(Ljava/lang/Object;)I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 150
    iget-object v1, p0, Lorg/mortbay/util/MultiException;->nested:Ljava/lang/Object;

    invoke-static {v1, v0}, Lorg/mortbay/util/LazyList;->get(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Throwable;

    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 149
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 151
    :cond_0
    return-void
.end method

.method public printStackTrace(Ljava/io/PrintStream;)V
    .locals 2
    .param p1, "out"    # Ljava/io/PrintStream;

    .prologue
    .line 160
    invoke-super {p0, p1}, Ljava/lang/Exception;->printStackTrace(Ljava/io/PrintStream;)V

    .line 161
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lorg/mortbay/util/MultiException;->nested:Ljava/lang/Object;

    invoke-static {v1}, Lorg/mortbay/util/LazyList;->size(Ljava/lang/Object;)I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 162
    iget-object v1, p0, Lorg/mortbay/util/MultiException;->nested:Ljava/lang/Object;

    invoke-static {v1, v0}, Lorg/mortbay/util/LazyList;->get(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Throwable;

    invoke-virtual {v1, p1}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintStream;)V

    .line 161
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 163
    :cond_0
    return-void
.end method

.method public printStackTrace(Ljava/io/PrintWriter;)V
    .locals 2
    .param p1, "out"    # Ljava/io/PrintWriter;

    .prologue
    .line 171
    invoke-super {p0, p1}, Ljava/lang/Exception;->printStackTrace(Ljava/io/PrintWriter;)V

    .line 172
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lorg/mortbay/util/MultiException;->nested:Ljava/lang/Object;

    invoke-static {v1}, Lorg/mortbay/util/LazyList;->size(Ljava/lang/Object;)I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 173
    iget-object v1, p0, Lorg/mortbay/util/MultiException;->nested:Ljava/lang/Object;

    invoke-static {v1, v0}, Lorg/mortbay/util/LazyList;->get(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Throwable;

    invoke-virtual {v1, p1}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintWriter;)V

    .line 172
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 174
    :cond_0
    return-void
.end method

.method public size()I
    .locals 1

    .prologue
    .line 54
    iget-object v0, p0, Lorg/mortbay/util/MultiException;->nested:Ljava/lang/Object;

    invoke-static {v0}, Lorg/mortbay/util/LazyList;->size(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 139
    iget-object v0, p0, Lorg/mortbay/util/MultiException;->nested:Ljava/lang/Object;

    invoke-static {v0}, Lorg/mortbay/util/LazyList;->size(Ljava/lang/Object;)I

    move-result v0

    if-lez v0, :cond_0

    .line 140
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v1, "org.mortbay.util.MultiException"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-object v1, p0, Lorg/mortbay/util/MultiException;->nested:Ljava/lang/Object;

    invoke-static {v1}, Lorg/mortbay/util/LazyList;->getList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    .line 142
    :goto_0
    return-object v0

    :cond_0
    const-string v0, "org.mortbay.util.MultiException[]"

    goto :goto_0
.end method
