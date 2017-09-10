.class public Lorg/mortbay/servlet/ThrottlingFilter;
.super Ljava/lang/Object;
.source "ThrottlingFilter.java"

# interfaces
.implements Ljavax/servlet/Filter;


# instance fields
.field private _current:I

.field private final _lock:Ljava/lang/Object;

.field private _maximum:I

.field private final _queue:Ljava/util/List;

.field private _queueSize:J

.field private _queueTimeout:J


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 92
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 93
    const/4 v0, 0x0

    iput v0, p0, Lorg/mortbay/servlet/ThrottlingFilter;->_current:I

    .line 94
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lorg/mortbay/servlet/ThrottlingFilter;->_lock:Ljava/lang/Object;

    .line 95
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lorg/mortbay/servlet/ThrottlingFilter;->_queue:Ljava/util/List;

    .line 96
    return-void
.end method

.method private acceptRequest()Z
    .locals 3

    .prologue
    .line 216
    iget-object v1, p0, Lorg/mortbay/servlet/ThrottlingFilter;->_lock:Ljava/lang/Object;

    monitor-enter v1

    .line 218
    :try_start_0
    iget v0, p0, Lorg/mortbay/servlet/ThrottlingFilter;->_current:I

    iget v2, p0, Lorg/mortbay/servlet/ThrottlingFilter;->_maximum:I

    if-ge v0, v2, :cond_0

    .line 220
    iget v0, p0, Lorg/mortbay/servlet/ThrottlingFilter;->_current:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/mortbay/servlet/ThrottlingFilter;->_current:I

    .line 221
    const/4 v0, 0x1

    monitor-exit v1

    .line 224
    :goto_0
    return v0

    .line 223
    :cond_0
    monitor-exit v1

    .line 224
    const/4 v0, 0x0

    goto :goto_0

    .line 223
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private dropFromQueue(Lorg/mortbay/util/ajax/Continuation;)V
    .locals 1
    .param p1, "continuation"    # Lorg/mortbay/util/ajax/Continuation;

    .prologue
    .line 181
    iget-object v0, p0, Lorg/mortbay/servlet/ThrottlingFilter;->_queue:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 182
    invoke-interface {p1}, Lorg/mortbay/util/ajax/Continuation;->reset()V

    .line 183
    return-void
.end method

.method private getContinuation(Ljavax/servlet/ServletRequest;)Lorg/mortbay/util/ajax/Continuation;
    .locals 1
    .param p1, "request"    # Ljavax/servlet/ServletRequest;

    .prologue
    .line 249
    const-string v0, "org.mortbay.jetty.ajax.Continuation"

    invoke-interface {p1, v0}, Ljavax/servlet/ServletRequest;->getAttribute(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/mortbay/util/ajax/Continuation;

    return-object v0
.end method

.method private getIntegerParameter(Ljavax/servlet/FilterConfig;Ljava/lang/String;I)I
    .locals 5
    .param p1, "filterConfig"    # Ljavax/servlet/FilterConfig;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "defaultValue"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/servlet/ServletException;
        }
    .end annotation

    .prologue
    .line 116
    invoke-interface {p1, p2}, Ljavax/servlet/FilterConfig;->getInitParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 117
    .local v1, "value":Ljava/lang/String;
    if-nez v1, :cond_0

    .line 123
    .end local p3    # "defaultValue":I
    :goto_0
    return p3

    .restart local p3    # "defaultValue":I
    :cond_0
    :try_start_0
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result p3

    goto :goto_0

    .line 125
    :catch_0
    move-exception v0

    .line 127
    .local v0, "e":Ljava/lang/NumberFormatException;
    new-instance v2, Ljavax/servlet/ServletException;

    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    const-string v4, "Parameter "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    const-string v4, " must be a number (was "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    const-string v4, " instead)"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljavax/servlet/ServletException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method private popQueue()V
    .locals 4

    .prologue
    .line 194
    iget-object v2, p0, Lorg/mortbay/servlet/ThrottlingFilter;->_queue:Ljava/util/List;

    monitor-enter v2

    .line 196
    :try_start_0
    iget-object v1, p0, Lorg/mortbay/servlet/ThrottlingFilter;->_queue:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 198
    monitor-exit v2

    .line 204
    :goto_0
    return-void

    .line 200
    :cond_0
    iget-object v1, p0, Lorg/mortbay/servlet/ThrottlingFilter;->_queue:Ljava/util/List;

    const/4 v3, 0x0

    invoke-interface {v1, v3}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/mortbay/util/ajax/Continuation;

    .line 201
    .local v0, "continuation":Lorg/mortbay/util/ajax/Continuation;
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 202
    const-string v1, "Resuming continuation {}"

    const/4 v2, 0x0

    invoke-static {v1, v0, v2}, Lorg/mortbay/log/Log;->debug(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 203
    invoke-interface {v0}, Lorg/mortbay/util/ajax/Continuation;->resume()V

    goto :goto_0

    .line 201
    .end local v0    # "continuation":Lorg/mortbay/util/ajax/Continuation;
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method private queueRequest(Ljavax/servlet/http/HttpServletRequest;Ljavax/servlet/http/HttpServletResponse;Lorg/mortbay/util/ajax/Continuation;)Z
    .locals 7
    .param p1, "request"    # Ljavax/servlet/http/HttpServletRequest;
    .param p2, "response"    # Ljavax/servlet/http/HttpServletResponse;
    .param p3, "continuation"    # Lorg/mortbay/util/ajax/Continuation;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljavax/servlet/ServletException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    .line 230
    iget-object v1, p0, Lorg/mortbay/servlet/ThrottlingFilter;->_queue:Ljava/util/List;

    monitor-enter v1

    .line 232
    :try_start_0
    iget-object v0, p0, Lorg/mortbay/servlet/ThrottlingFilter;->_queue:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    int-to-long v2, v0

    iget-wide v4, p0, Lorg/mortbay/servlet/ThrottlingFilter;->_queueSize:J

    cmp-long v0, v2, v4

    if-ltz v0, :cond_0

    .line 234
    const-string v0, "Queue is full, rejecting request {}"

    invoke-interface {p1}, Ljavax/servlet/http/HttpServletRequest;->getRequestURI()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v0, v2, v3}, Lorg/mortbay/log/Log;->debug(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 235
    const/4 v0, 0x0

    monitor-exit v1

    .line 244
    :goto_0
    return v0

    .line 238
    :cond_0
    const-string v0, "Queuing request {} / {}"

    invoke-interface {p1}, Ljavax/servlet/http/HttpServletRequest;->getRequestURI()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2, p3}, Lorg/mortbay/log/Log;->debug(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 239
    iget-object v0, p0, Lorg/mortbay/servlet/ThrottlingFilter;->_queue:Ljava/util/List;

    invoke-interface {v0, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 240
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 242
    iget-wide v0, p0, Lorg/mortbay/servlet/ThrottlingFilter;->_queueTimeout:J

    invoke-interface {p3, v0, v1}, Lorg/mortbay/util/ajax/Continuation;->suspend(J)Z

    .line 243
    const-string v0, "Resuming blocking continuation for request {}"

    invoke-interface {p1}, Ljavax/servlet/http/HttpServletRequest;->getRequestURI()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v6}, Lorg/mortbay/log/Log;->debug(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 244
    const/4 v0, 0x1

    goto :goto_0

    .line 240
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private releaseRequest()V
    .locals 2

    .prologue
    .line 208
    iget-object v1, p0, Lorg/mortbay/servlet/ThrottlingFilter;->_lock:Ljava/lang/Object;

    monitor-enter v1

    .line 210
    :try_start_0
    iget v0, p0, Lorg/mortbay/servlet/ThrottlingFilter;->_current:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lorg/mortbay/servlet/ThrottlingFilter;->_current:I

    .line 211
    monitor-exit v1

    .line 212
    return-void

    .line 211
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method


# virtual methods
.method public destroy()V
    .locals 1

    .prologue
    .line 254
    iget-object v0, p0, Lorg/mortbay/servlet/ThrottlingFilter;->_queue:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 255
    return-void
.end method

.method public doFilter(Ljavax/servlet/ServletRequest;Ljavax/servlet/ServletResponse;Ljavax/servlet/FilterChain;)V
    .locals 0
    .param p1, "request"    # Ljavax/servlet/ServletRequest;
    .param p2, "response"    # Ljavax/servlet/ServletResponse;
    .param p3, "chain"    # Ljavax/servlet/FilterChain;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljavax/servlet/ServletException;
        }
    .end annotation

    .prologue
    .line 134
    check-cast p1, Ljavax/servlet/http/HttpServletRequest;

    .end local p1    # "request":Ljavax/servlet/ServletRequest;
    check-cast p2, Ljavax/servlet/http/HttpServletResponse;

    .end local p2    # "response":Ljavax/servlet/ServletResponse;
    invoke-virtual {p0, p1, p2, p3}, Lorg/mortbay/servlet/ThrottlingFilter;->doFilter(Ljavax/servlet/http/HttpServletRequest;Ljavax/servlet/http/HttpServletResponse;Ljavax/servlet/FilterChain;)V

    .line 135
    return-void
.end method

.method public doFilter(Ljavax/servlet/http/HttpServletRequest;Ljavax/servlet/http/HttpServletResponse;Ljavax/servlet/FilterChain;)V
    .locals 4
    .param p1, "request"    # Ljavax/servlet/http/HttpServletRequest;
    .param p2, "response"    # Ljavax/servlet/http/HttpServletResponse;
    .param p3, "chain"    # Ljavax/servlet/FilterChain;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljavax/servlet/ServletException;
        }
    .end annotation

    .prologue
    .line 140
    invoke-direct {p0, p1}, Lorg/mortbay/servlet/ThrottlingFilter;->getContinuation(Ljavax/servlet/ServletRequest;)Lorg/mortbay/util/ajax/Continuation;

    move-result-object v1

    .line 142
    .local v1, "continuation":Lorg/mortbay/util/ajax/Continuation;
    const/4 v0, 0x0

    .line 146
    .local v0, "accepted":Z
    :try_start_0
    invoke-direct {p0}, Lorg/mortbay/servlet/ThrottlingFilter;->acceptRequest()Z

    move-result v0

    .line 147
    if-nez v0, :cond_0

    .line 150
    invoke-interface {v1}, Lorg/mortbay/util/ajax/Continuation;->isPending()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 152
    const-string v2, "Request {} / {} was already queued, rejecting"

    invoke-interface {p1}, Ljavax/servlet/http/HttpServletRequest;->getRequestURI()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v1}, Lorg/mortbay/log/Log;->debug(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 153
    invoke-direct {p0, v1}, Lorg/mortbay/servlet/ThrottlingFilter;->dropFromQueue(Lorg/mortbay/util/ajax/Continuation;)V

    .line 154
    invoke-interface {v1}, Lorg/mortbay/util/ajax/Continuation;->reset()V

    .line 163
    :cond_0
    :goto_0
    if-eqz v0, :cond_3

    .line 164
    invoke-interface {p3, p1, p2}, Ljavax/servlet/FilterChain;->doFilter(Ljavax/servlet/ServletRequest;Ljavax/servlet/ServletResponse;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 170
    :goto_1
    if-eqz v0, :cond_1

    .line 172
    invoke-direct {p0}, Lorg/mortbay/servlet/ThrottlingFilter;->releaseRequest()V

    .line 173
    invoke-direct {p0}, Lorg/mortbay/servlet/ThrottlingFilter;->popQueue()V

    .line 177
    :cond_1
    return-void

    .line 157
    :cond_2
    :try_start_1
    invoke-direct {p0, p1, p2, v1}, Lorg/mortbay/servlet/ThrottlingFilter;->queueRequest(Ljavax/servlet/http/HttpServletRequest;Ljavax/servlet/http/HttpServletResponse;Lorg/mortbay/util/ajax/Continuation;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 159
    invoke-direct {p0}, Lorg/mortbay/servlet/ThrottlingFilter;->acceptRequest()Z

    move-result v0

    goto :goto_0

    .line 166
    :cond_3
    invoke-virtual {p0, p1, p2}, Lorg/mortbay/servlet/ThrottlingFilter;->rejectRequest(Ljavax/servlet/http/HttpServletRequest;Ljavax/servlet/http/HttpServletResponse;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 170
    :catchall_0
    move-exception v2

    if-eqz v0, :cond_4

    .line 172
    invoke-direct {p0}, Lorg/mortbay/servlet/ThrottlingFilter;->releaseRequest()V

    .line 173
    invoke-direct {p0}, Lorg/mortbay/servlet/ThrottlingFilter;->popQueue()V

    .line 170
    :cond_4
    throw v2
.end method

.method public init(Ljavax/servlet/FilterConfig;)V
    .locals 5
    .param p1, "filterConfig"    # Ljavax/servlet/FilterConfig;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/servlet/ServletException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 101
    const-string v0, "maximum"

    const/16 v1, 0xa

    invoke-direct {p0, p1, v0, v1}, Lorg/mortbay/servlet/ThrottlingFilter;->getIntegerParameter(Ljavax/servlet/FilterConfig;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lorg/mortbay/servlet/ThrottlingFilter;->_maximum:I

    .line 102
    const-string v0, "block"

    const/16 v1, 0x1388

    invoke-direct {p0, p1, v0, v1}, Lorg/mortbay/servlet/ThrottlingFilter;->getIntegerParameter(Ljavax/servlet/FilterConfig;Ljava/lang/String;I)I

    move-result v0

    int-to-long v0, v0

    iput-wide v0, p0, Lorg/mortbay/servlet/ThrottlingFilter;->_queueTimeout:J

    .line 103
    const-string v0, "queue"

    const/16 v1, 0x1f4

    invoke-direct {p0, p1, v0, v1}, Lorg/mortbay/servlet/ThrottlingFilter;->getIntegerParameter(Ljavax/servlet/FilterConfig;Ljava/lang/String;I)I

    move-result v0

    int-to-long v0, v0

    iput-wide v0, p0, Lorg/mortbay/servlet/ThrottlingFilter;->_queueSize:J

    .line 105
    iget-wide v0, p0, Lorg/mortbay/servlet/ThrottlingFilter;->_queueTimeout:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 107
    const-wide/32 v0, 0x7fffffff

    iput-wide v0, p0, Lorg/mortbay/servlet/ThrottlingFilter;->_queueTimeout:J

    .line 110
    :cond_0
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v1, "Config{maximum:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget v1, p0, Lorg/mortbay/servlet/ThrottlingFilter;->_maximum:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, ", block:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-wide v2, p0, Lorg/mortbay/servlet/ThrottlingFilter;->_queueTimeout:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, ", queue:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-wide v2, p0, Lorg/mortbay/servlet/ThrottlingFilter;->_queueSize:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v4, v4}, Lorg/mortbay/log/Log;->debug(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 111
    return-void
.end method

.method protected rejectRequest(Ljavax/servlet/http/HttpServletRequest;Ljavax/servlet/http/HttpServletResponse;)V
    .locals 3
    .param p1, "request"    # Ljavax/servlet/http/HttpServletRequest;
    .param p2, "response"    # Ljavax/servlet/http/HttpServletResponse;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 187
    const/16 v0, 0x1f7

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "Too many active connections to resource "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-interface {p1}, Ljavax/servlet/http/HttpServletRequest;->getRequestURI()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p2, v0, v1}, Ljavax/servlet/http/HttpServletResponse;->sendError(ILjava/lang/String;)V

    .line 189
    return-void
.end method
