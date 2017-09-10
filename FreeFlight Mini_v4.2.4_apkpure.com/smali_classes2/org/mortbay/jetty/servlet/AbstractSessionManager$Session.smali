.class public abstract Lorg/mortbay/jetty/servlet/AbstractSessionManager$Session;
.super Ljava/lang/Object;
.source "AbstractSessionManager.java"

# interfaces
.implements Lorg/mortbay/jetty/servlet/AbstractSessionManager$SessionIf;
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/mortbay/jetty/servlet/AbstractSessionManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401
    name = "Session"
.end annotation


# instance fields
.field protected _accessed:J

.field protected final _clusterId:Ljava/lang/String;

.field protected _cookieSet:J

.field protected final _created:J

.field protected _doInvalidate:Z

.field protected _idChanged:Z

.field protected _invalid:Z

.field protected _lastAccessed:J

.field protected _maxIdleMs:J

.field protected _newSession:Z

.field protected final _nodeId:Ljava/lang/String;

.field protected _requests:I

.field protected _values:Ljava/util/Map;

.field private final this$0:Lorg/mortbay/jetty/servlet/AbstractSessionManager;


# direct methods
.method protected constructor <init>(Lorg/mortbay/jetty/servlet/AbstractSessionManager;JLjava/lang/String;)V
    .locals 4
    .param p2, "created"    # J
    .param p4, "clusterId"    # Ljava/lang/String;

    .prologue
    .line 758
    iput-object p1, p0, Lorg/mortbay/jetty/servlet/AbstractSessionManager$Session;->this$0:Lorg/mortbay/jetty/servlet/AbstractSessionManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 740
    iget-object v0, p0, Lorg/mortbay/jetty/servlet/AbstractSessionManager$Session;->this$0:Lorg/mortbay/jetty/servlet/AbstractSessionManager;

    iget v0, v0, Lorg/mortbay/jetty/servlet/AbstractSessionManager;->_dftMaxIdleSecs:I

    mul-int/lit16 v0, v0, 0x3e8

    int-to-long v0, v0

    iput-wide v0, p0, Lorg/mortbay/jetty/servlet/AbstractSessionManager$Session;->_maxIdleMs:J

    .line 759
    iput-wide p2, p0, Lorg/mortbay/jetty/servlet/AbstractSessionManager$Session;->_created:J

    .line 760
    iput-object p4, p0, Lorg/mortbay/jetty/servlet/AbstractSessionManager$Session;->_clusterId:Ljava/lang/String;

    .line 761
    iget-object v0, p1, Lorg/mortbay/jetty/servlet/AbstractSessionManager;->_sessionIdManager:Lorg/mortbay/jetty/SessionIdManager;

    iget-object v1, p0, Lorg/mortbay/jetty/servlet/AbstractSessionManager$Session;->_clusterId:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lorg/mortbay/jetty/SessionIdManager;->getNodeId(Ljava/lang/String;Ljavax/servlet/http/HttpServletRequest;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/mortbay/jetty/servlet/AbstractSessionManager$Session;->_nodeId:Ljava/lang/String;

    .line 762
    iget-wide v0, p0, Lorg/mortbay/jetty/servlet/AbstractSessionManager$Session;->_created:J

    iput-wide v0, p0, Lorg/mortbay/jetty/servlet/AbstractSessionManager$Session;->_accessed:J

    .line 763
    return-void
.end method

.method protected constructor <init>(Lorg/mortbay/jetty/servlet/AbstractSessionManager;Ljavax/servlet/http/HttpServletRequest;)V
    .locals 5
    .param p2, "request"    # Ljavax/servlet/http/HttpServletRequest;

    .prologue
    const/4 v4, 0x1

    .line 747
    iput-object p1, p0, Lorg/mortbay/jetty/servlet/AbstractSessionManager$Session;->this$0:Lorg/mortbay/jetty/servlet/AbstractSessionManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 740
    iget-object v0, p0, Lorg/mortbay/jetty/servlet/AbstractSessionManager$Session;->this$0:Lorg/mortbay/jetty/servlet/AbstractSessionManager;

    iget v0, v0, Lorg/mortbay/jetty/servlet/AbstractSessionManager;->_dftMaxIdleSecs:I

    mul-int/lit16 v0, v0, 0x3e8

    int-to-long v0, v0

    iput-wide v0, p0, Lorg/mortbay/jetty/servlet/AbstractSessionManager$Session;->_maxIdleMs:J

    .line 748
    iput-boolean v4, p0, Lorg/mortbay/jetty/servlet/AbstractSessionManager$Session;->_newSession:Z

    .line 749
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/mortbay/jetty/servlet/AbstractSessionManager$Session;->_created:J

    .line 750
    iget-object v0, p1, Lorg/mortbay/jetty/servlet/AbstractSessionManager;->_sessionIdManager:Lorg/mortbay/jetty/SessionIdManager;

    iget-wide v2, p0, Lorg/mortbay/jetty/servlet/AbstractSessionManager$Session;->_created:J

    invoke-interface {v0, p2, v2, v3}, Lorg/mortbay/jetty/SessionIdManager;->newSessionId(Ljavax/servlet/http/HttpServletRequest;J)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/mortbay/jetty/servlet/AbstractSessionManager$Session;->_clusterId:Ljava/lang/String;

    .line 751
    iget-object v0, p1, Lorg/mortbay/jetty/servlet/AbstractSessionManager;->_sessionIdManager:Lorg/mortbay/jetty/SessionIdManager;

    iget-object v1, p0, Lorg/mortbay/jetty/servlet/AbstractSessionManager$Session;->_clusterId:Ljava/lang/String;

    invoke-interface {v0, v1, p2}, Lorg/mortbay/jetty/SessionIdManager;->getNodeId(Ljava/lang/String;Ljavax/servlet/http/HttpServletRequest;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/mortbay/jetty/servlet/AbstractSessionManager$Session;->_nodeId:Ljava/lang/String;

    .line 752
    iget-wide v0, p0, Lorg/mortbay/jetty/servlet/AbstractSessionManager$Session;->_created:J

    iput-wide v0, p0, Lorg/mortbay/jetty/servlet/AbstractSessionManager$Session;->_accessed:J

    .line 753
    iput v4, p0, Lorg/mortbay/jetty/servlet/AbstractSessionManager$Session;->_requests:I

    .line 754
    return-void
.end method


# virtual methods
.method protected access(J)V
    .locals 3
    .param p1, "time"    # J

    .prologue
    .line 894
    monitor-enter p0

    .line 896
    const/4 v0, 0x0

    :try_start_0
    iput-boolean v0, p0, Lorg/mortbay/jetty/servlet/AbstractSessionManager$Session;->_newSession:Z

    .line 897
    iget-wide v0, p0, Lorg/mortbay/jetty/servlet/AbstractSessionManager$Session;->_accessed:J

    iput-wide v0, p0, Lorg/mortbay/jetty/servlet/AbstractSessionManager$Session;->_lastAccessed:J

    .line 898
    iput-wide p1, p0, Lorg/mortbay/jetty/servlet/AbstractSessionManager$Session;->_accessed:J

    .line 899
    iget v0, p0, Lorg/mortbay/jetty/servlet/AbstractSessionManager$Session;->_requests:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/mortbay/jetty/servlet/AbstractSessionManager$Session;->_requests:I

    .line 900
    monitor-exit p0

    .line 901
    return-void

    .line 900
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method protected bindValue(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/Object;

    .prologue
    .line 1105
    if-eqz p2, :cond_0

    instance-of v0, p2, Ljavax/servlet/http/HttpSessionBindingListener;

    if-eqz v0, :cond_0

    .line 1106
    check-cast p2, Ljavax/servlet/http/HttpSessionBindingListener;

    .end local p2    # "value":Ljava/lang/Object;
    new-instance v0, Ljavax/servlet/http/HttpSessionBindingEvent;

    invoke-direct {v0, p0, p1}, Ljavax/servlet/http/HttpSessionBindingEvent;-><init>(Ljavax/servlet/http/HttpSession;Ljava/lang/String;)V

    invoke-interface {p2, v0}, Ljavax/servlet/http/HttpSessionBindingListener;->valueBound(Ljavax/servlet/http/HttpSessionBindingEvent;)V

    .line 1107
    :cond_0
    return-void
.end method

.method protected complete()V
    .locals 1

    .prologue
    .line 906
    monitor-enter p0

    .line 908
    :try_start_0
    iget v0, p0, Lorg/mortbay/jetty/servlet/AbstractSessionManager$Session;->_requests:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lorg/mortbay/jetty/servlet/AbstractSessionManager$Session;->_requests:I

    .line 909
    iget-boolean v0, p0, Lorg/mortbay/jetty/servlet/AbstractSessionManager$Session;->_doInvalidate:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lorg/mortbay/jetty/servlet/AbstractSessionManager$Session;->_requests:I

    if-gtz v0, :cond_0

    .line 910
    invoke-virtual {p0}, Lorg/mortbay/jetty/servlet/AbstractSessionManager$Session;->doInvalidate()V

    .line 911
    :cond_0
    monitor-exit p0

    .line 912
    return-void

    .line 911
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method protected cookieSet()V
    .locals 2

    .prologue
    .line 1121
    iget-wide v0, p0, Lorg/mortbay/jetty/servlet/AbstractSessionManager$Session;->_accessed:J

    iput-wide v0, p0, Lorg/mortbay/jetty/servlet/AbstractSessionManager$Session;->_cookieSet:J

    .line 1122
    return-void
.end method

.method protected declared-synchronized didActivate()V
    .locals 6

    .prologue
    .line 1150
    monitor-enter p0

    :try_start_0
    new-instance v1, Ljavax/servlet/http/HttpSessionEvent;

    invoke-direct {v1, p0}, Ljavax/servlet/http/HttpSessionEvent;-><init>(Ljavax/servlet/http/HttpSession;)V

    .line 1151
    .local v1, "event":Ljavax/servlet/http/HttpSessionEvent;
    iget-object v5, p0, Lorg/mortbay/jetty/servlet/AbstractSessionManager$Session;->_values:Ljava/util/Map;

    invoke-interface {v5}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "iter":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 1153
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    .line 1154
    .local v4, "value":Ljava/lang/Object;
    instance-of v5, v4, Ljavax/servlet/http/HttpSessionActivationListener;

    if-eqz v5, :cond_0

    .line 1156
    move-object v0, v4

    check-cast v0, Ljavax/servlet/http/HttpSessionActivationListener;

    move-object v3, v0

    .line 1157
    .local v3, "listener":Ljavax/servlet/http/HttpSessionActivationListener;
    invoke-interface {v3, v1}, Ljavax/servlet/http/HttpSessionActivationListener;->sessionDidActivate(Ljavax/servlet/http/HttpSessionEvent;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 1150
    .end local v1    # "event":Ljavax/servlet/http/HttpSessionEvent;
    .end local v2    # "iter":Ljava/util/Iterator;
    .end local v3    # "listener":Ljavax/servlet/http/HttpSessionActivationListener;
    .end local v4    # "value":Ljava/lang/Object;
    :catchall_0
    move-exception v5

    monitor-exit p0

    throw v5

    .line 1160
    .restart local v1    # "event":Ljavax/servlet/http/HttpSessionEvent;
    .restart local v2    # "iter":Ljava/util/Iterator;
    :cond_1
    monitor-exit p0

    return-void
.end method

.method protected doInvalidate()V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    const/4 v7, 0x1

    .line 948
    :try_start_0
    iget-boolean v6, p0, Lorg/mortbay/jetty/servlet/AbstractSessionManager$Session;->_invalid:Z

    if-eqz v6, :cond_0

    .line 949
    new-instance v6, Ljava/lang/IllegalStateException;

    invoke-direct {v6}, Ljava/lang/IllegalStateException;-><init>()V

    throw v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 984
    :catchall_0
    move-exception v6

    iput-boolean v7, p0, Lorg/mortbay/jetty/servlet/AbstractSessionManager$Session;->_invalid:Z

    throw v6

    .line 951
    :cond_0
    :try_start_1
    iget-object v6, p0, Lorg/mortbay/jetty/servlet/AbstractSessionManager$Session;->_values:Ljava/util/Map;

    if-eqz v6, :cond_2

    iget-object v6, p0, Lorg/mortbay/jetty/servlet/AbstractSessionManager$Session;->_values:Ljava/util/Map;

    invoke-interface {v6}, Ljava/util/Map;->size()I

    move-result v6

    if-lez v6, :cond_2

    .line 954
    monitor-enter p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 956
    :try_start_2
    new-instance v4, Ljava/util/ArrayList;

    iget-object v6, p0, Lorg/mortbay/jetty/servlet/AbstractSessionManager$Session;->_values:Ljava/util/Map;

    invoke-interface {v6}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v6

    invoke-direct {v4, v6}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 957
    .local v4, "keys":Ljava/util/ArrayList;
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 959
    :try_start_3
    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 960
    .local v2, "iter":Ljava/util/Iterator;
    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 962
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 965
    .local v3, "key":Ljava/lang/String;
    monitor-enter p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 967
    :try_start_4
    iget-object v6, p0, Lorg/mortbay/jetty/servlet/AbstractSessionManager$Session;->_values:Ljava/util/Map;

    invoke-interface {v6, v3}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    .line 968
    .local v5, "value":Ljava/lang/Object;
    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 969
    :try_start_5
    invoke-virtual {p0, v3, v5}, Lorg/mortbay/jetty/servlet/AbstractSessionManager$Session;->unbindValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 971
    iget-object v6, p0, Lorg/mortbay/jetty/servlet/AbstractSessionManager$Session;->this$0:Lorg/mortbay/jetty/servlet/AbstractSessionManager;

    iget-object v6, v6, Lorg/mortbay/jetty/servlet/AbstractSessionManager;->_sessionAttributeListeners:Ljava/lang/Object;

    if-eqz v6, :cond_1

    .line 973
    new-instance v0, Ljavax/servlet/http/HttpSessionBindingEvent;

    invoke-direct {v0, p0, v3, v5}, Ljavax/servlet/http/HttpSessionBindingEvent;-><init>(Ljavax/servlet/http/HttpSession;Ljava/lang/String;Ljava/lang/Object;)V

    .line 975
    .local v0, "event":Ljavax/servlet/http/HttpSessionBindingEvent;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v6, p0, Lorg/mortbay/jetty/servlet/AbstractSessionManager$Session;->this$0:Lorg/mortbay/jetty/servlet/AbstractSessionManager;

    iget-object v6, v6, Lorg/mortbay/jetty/servlet/AbstractSessionManager;->_sessionAttributeListeners:Ljava/lang/Object;

    invoke-static {v6}, Lorg/mortbay/util/LazyList;->size(Ljava/lang/Object;)I

    move-result v6

    if-ge v1, v6, :cond_1

    .line 976
    iget-object v6, p0, Lorg/mortbay/jetty/servlet/AbstractSessionManager$Session;->this$0:Lorg/mortbay/jetty/servlet/AbstractSessionManager;

    iget-object v6, v6, Lorg/mortbay/jetty/servlet/AbstractSessionManager;->_sessionAttributeListeners:Ljava/lang/Object;

    invoke-static {v6, v1}, Lorg/mortbay/util/LazyList;->get(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljavax/servlet/http/HttpSessionAttributeListener;

    invoke-interface {v6, v0}, Ljavax/servlet/http/HttpSessionAttributeListener;->attributeRemoved(Ljavax/servlet/http/HttpSessionBindingEvent;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 975
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 957
    .end local v0    # "event":Ljavax/servlet/http/HttpSessionBindingEvent;
    .end local v1    # "i":I
    .end local v2    # "iter":Ljava/util/Iterator;
    .end local v3    # "key":Ljava/lang/String;
    .end local v4    # "keys":Ljava/util/ArrayList;
    .end local v5    # "value":Ljava/lang/Object;
    :catchall_1
    move-exception v6

    :try_start_6
    monitor-exit p0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    :try_start_7
    throw v6
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 968
    .restart local v2    # "iter":Ljava/util/Iterator;
    .restart local v3    # "key":Ljava/lang/String;
    .restart local v4    # "keys":Ljava/util/ArrayList;
    :catchall_2
    move-exception v6

    :try_start_8
    monitor-exit p0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    :try_start_9
    throw v6
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    .line 984
    .end local v2    # "iter":Ljava/util/Iterator;
    .end local v3    # "key":Ljava/lang/String;
    .end local v4    # "keys":Ljava/util/ArrayList;
    :cond_2
    iput-boolean v7, p0, Lorg/mortbay/jetty/servlet/AbstractSessionManager$Session;->_invalid:Z

    .line 986
    return-void
.end method

.method public declared-synchronized getAttribute(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 780
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lorg/mortbay/jetty/servlet/AbstractSessionManager$Session;->_invalid:Z

    if-eqz v0, :cond_0

    .line 781
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 780
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 783
    :cond_0
    :try_start_1
    iget-object v0, p0, Lorg/mortbay/jetty/servlet/AbstractSessionManager$Session;->_values:Ljava/util/Map;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v0, :cond_1

    .line 784
    const/4 v0, 0x0

    .line 786
    :goto_0
    monitor-exit p0

    return-object v0

    :cond_1
    :try_start_2
    iget-object v0, p0, Lorg/mortbay/jetty/servlet/AbstractSessionManager$Session;->_values:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v0

    goto :goto_0
.end method

.method public declared-synchronized getAttributeNames()Ljava/util/Enumeration;
    .locals 2

    .prologue
    .line 792
    monitor-enter p0

    :try_start_0
    iget-boolean v1, p0, Lorg/mortbay/jetty/servlet/AbstractSessionManager$Session;->_invalid:Z

    if-eqz v1, :cond_0

    .line 793
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1}, Ljava/lang/IllegalStateException;-><init>()V

    throw v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 792
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1

    .line 794
    :cond_0
    :try_start_1
    iget-object v1, p0, Lorg/mortbay/jetty/servlet/AbstractSessionManager$Session;->_values:Ljava/util/Map;

    if-nez v1, :cond_1

    sget-object v0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    .line 795
    .local v0, "names":Ljava/util/List;
    :goto_0
    invoke-static {v0}, Ljava/util/Collections;->enumeration(Ljava/util/Collection;)Ljava/util/Enumeration;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v1

    monitor-exit p0

    return-object v1

    .line 794
    .end local v0    # "names":Ljava/util/List;
    :cond_1
    :try_start_2
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lorg/mortbay/jetty/servlet/AbstractSessionManager$Session;->_values:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method

.method protected getClusterId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 827
    iget-object v0, p0, Lorg/mortbay/jetty/servlet/AbstractSessionManager$Session;->_clusterId:Ljava/lang/String;

    return-object v0
.end method

.method public getCookieSetTime()J
    .locals 2

    .prologue
    .line 801
    iget-wide v0, p0, Lorg/mortbay/jetty/servlet/AbstractSessionManager$Session;->_cookieSet:J

    return-wide v0
.end method

.method public getCreationTime()J
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 807
    iget-boolean v0, p0, Lorg/mortbay/jetty/servlet/AbstractSessionManager$Session;->_invalid:Z

    if-eqz v0, :cond_0

    .line 808
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    .line 809
    :cond_0
    iget-wide v0, p0, Lorg/mortbay/jetty/servlet/AbstractSessionManager$Session;->_created:J

    return-wide v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 815
    iget-object v0, p0, Lorg/mortbay/jetty/servlet/AbstractSessionManager$Session;->this$0:Lorg/mortbay/jetty/servlet/AbstractSessionManager;

    iget-boolean v0, v0, Lorg/mortbay/jetty/servlet/AbstractSessionManager;->_nodeIdInSessionId:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/mortbay/jetty/servlet/AbstractSessionManager$Session;->_nodeId:Ljava/lang/String;

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lorg/mortbay/jetty/servlet/AbstractSessionManager$Session;->_clusterId:Ljava/lang/String;

    goto :goto_0
.end method

.method public getLastAccessedTime()J
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 833
    iget-boolean v0, p0, Lorg/mortbay/jetty/servlet/AbstractSessionManager$Session;->_invalid:Z

    if-eqz v0, :cond_0

    .line 834
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    .line 835
    :cond_0
    iget-wide v0, p0, Lorg/mortbay/jetty/servlet/AbstractSessionManager$Session;->_lastAccessed:J

    return-wide v0
.end method

.method public getMaxInactiveInterval()I
    .locals 4

    .prologue
    .line 841
    iget-boolean v0, p0, Lorg/mortbay/jetty/servlet/AbstractSessionManager$Session;->_invalid:Z

    if-eqz v0, :cond_0

    .line 842
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    .line 843
    :cond_0
    iget-wide v0, p0, Lorg/mortbay/jetty/servlet/AbstractSessionManager$Session;->_maxIdleMs:J

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    long-to-int v0, v0

    return v0
.end method

.method protected getNodeId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 821
    iget-object v0, p0, Lorg/mortbay/jetty/servlet/AbstractSessionManager$Session;->_nodeId:Ljava/lang/String;

    return-object v0
.end method

.method public getServletContext()Ljavax/servlet/ServletContext;
    .locals 1

    .prologue
    .line 852
    iget-object v0, p0, Lorg/mortbay/jetty/servlet/AbstractSessionManager$Session;->this$0:Lorg/mortbay/jetty/servlet/AbstractSessionManager;

    iget-object v0, v0, Lorg/mortbay/jetty/servlet/AbstractSessionManager;->_context:Lorg/mortbay/jetty/handler/ContextHandler$SContext;

    return-object v0
.end method

.method public getSession()Lorg/mortbay/jetty/servlet/AbstractSessionManager$Session;
    .locals 0

    .prologue
    .line 768
    return-object p0
.end method

.method public getSessionContext()Ljavax/servlet/http/HttpSessionContext;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 861
    iget-boolean v0, p0, Lorg/mortbay/jetty/servlet/AbstractSessionManager$Session;->_invalid:Z

    if-eqz v0, :cond_0

    .line 862
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    .line 863
    :cond_0
    invoke-static {}, Lorg/mortbay/jetty/servlet/AbstractSessionManager;->access$100()Ljavax/servlet/http/HttpSessionContext;

    move-result-object v0

    return-object v0
.end method

.method public getValue(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 873
    invoke-virtual {p0, p1}, Lorg/mortbay/jetty/servlet/AbstractSessionManager$Session;->getAttribute(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public declared-synchronized getValueNames()[Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 883
    monitor-enter p0

    :try_start_0
    iget-boolean v1, p0, Lorg/mortbay/jetty/servlet/AbstractSessionManager$Session;->_invalid:Z

    if-eqz v1, :cond_0

    .line 884
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1}, Ljava/lang/IllegalStateException;-><init>()V

    throw v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 883
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1

    .line 885
    :cond_0
    :try_start_1
    iget-object v1, p0, Lorg/mortbay/jetty/servlet/AbstractSessionManager$Session;->_values:Ljava/util/Map;

    if-nez v1, :cond_1

    .line 886
    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 888
    :goto_0
    monitor-exit p0

    return-object v1

    .line 887
    :cond_1
    :try_start_2
    iget-object v1, p0, Lorg/mortbay/jetty/servlet/AbstractSessionManager$Session;->_values:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v1

    new-array v0, v1, [Ljava/lang/String;

    .line 888
    .local v0, "a":[Ljava/lang/String;
    iget-object v1, p0, Lorg/mortbay/jetty/servlet/AbstractSessionManager$Session;->_values:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    check-cast v1, [Ljava/lang/String;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method

.method protected initValues()V
    .locals 1

    .prologue
    .line 774
    invoke-virtual {p0}, Lorg/mortbay/jetty/servlet/AbstractSessionManager$Session;->newAttributeMap()Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lorg/mortbay/jetty/servlet/AbstractSessionManager$Session;->_values:Ljava/util/Map;

    .line 775
    return-void
.end method

.method public invalidate()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 938
    iget-object v0, p0, Lorg/mortbay/jetty/servlet/AbstractSessionManager$Session;->this$0:Lorg/mortbay/jetty/servlet/AbstractSessionManager;

    const/4 v1, 0x1

    invoke-virtual {v0, p0, v1}, Lorg/mortbay/jetty/servlet/AbstractSessionManager;->removeSession(Lorg/mortbay/jetty/servlet/AbstractSessionManager$Session;Z)V

    .line 939
    invoke-virtual {p0}, Lorg/mortbay/jetty/servlet/AbstractSessionManager$Session;->doInvalidate()V

    .line 940
    return-void
.end method

.method public isIdChanged()Z
    .locals 1

    .prologue
    .line 991
    iget-boolean v0, p0, Lorg/mortbay/jetty/servlet/AbstractSessionManager$Session;->_idChanged:Z

    return v0
.end method

.method public isNew()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 997
    iget-boolean v0, p0, Lorg/mortbay/jetty/servlet/AbstractSessionManager$Session;->_invalid:Z

    if-eqz v0, :cond_0

    .line 998
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    .line 999
    :cond_0
    iget-boolean v0, p0, Lorg/mortbay/jetty/servlet/AbstractSessionManager$Session;->_newSession:Z

    return v0
.end method

.method protected isValid()Z
    .locals 1

    .prologue
    .line 1112
    iget-boolean v0, p0, Lorg/mortbay/jetty/servlet/AbstractSessionManager$Session;->_invalid:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected abstract newAttributeMap()Ljava/util/Map;
.end method

.method public putValue(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 1009
    invoke-virtual {p0, p1, p2}, Lorg/mortbay/jetty/servlet/AbstractSessionManager$Session;->setAttribute(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1010
    return-void
.end method

.method public declared-synchronized removeAttribute(Ljava/lang/String;)V
    .locals 4
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 1015
    monitor-enter p0

    :try_start_0
    iget-boolean v3, p0, Lorg/mortbay/jetty/servlet/AbstractSessionManager$Session;->_invalid:Z

    if-eqz v3, :cond_0

    .line 1016
    new-instance v3, Ljava/lang/IllegalStateException;

    invoke-direct {v3}, Ljava/lang/IllegalStateException;-><init>()V

    throw v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1015
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3

    .line 1017
    :cond_0
    :try_start_1
    iget-object v3, p0, Lorg/mortbay/jetty/servlet/AbstractSessionManager$Session;->_values:Ljava/util/Map;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v3, :cond_2

    .line 1032
    :cond_1
    monitor-exit p0

    return-void

    .line 1020
    :cond_2
    :try_start_2
    iget-object v3, p0, Lorg/mortbay/jetty/servlet/AbstractSessionManager$Session;->_values:Ljava/util/Map;

    invoke-interface {v3, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 1021
    .local v2, "old":Ljava/lang/Object;
    if-eqz v2, :cond_1

    .line 1023
    invoke-virtual {p0, p1, v2}, Lorg/mortbay/jetty/servlet/AbstractSessionManager$Session;->unbindValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1024
    iget-object v3, p0, Lorg/mortbay/jetty/servlet/AbstractSessionManager$Session;->this$0:Lorg/mortbay/jetty/servlet/AbstractSessionManager;

    iget-object v3, v3, Lorg/mortbay/jetty/servlet/AbstractSessionManager;->_sessionAttributeListeners:Ljava/lang/Object;

    if-eqz v3, :cond_1

    .line 1026
    new-instance v0, Ljavax/servlet/http/HttpSessionBindingEvent;

    invoke-direct {v0, p0, p1, v2}, Ljavax/servlet/http/HttpSessionBindingEvent;-><init>(Ljavax/servlet/http/HttpSession;Ljava/lang/String;Ljava/lang/Object;)V

    .line 1028
    .local v0, "event":Ljavax/servlet/http/HttpSessionBindingEvent;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v3, p0, Lorg/mortbay/jetty/servlet/AbstractSessionManager$Session;->this$0:Lorg/mortbay/jetty/servlet/AbstractSessionManager;

    iget-object v3, v3, Lorg/mortbay/jetty/servlet/AbstractSessionManager;->_sessionAttributeListeners:Ljava/lang/Object;

    invoke-static {v3}, Lorg/mortbay/util/LazyList;->size(Ljava/lang/Object;)I

    move-result v3

    if-ge v1, v3, :cond_1

    .line 1029
    iget-object v3, p0, Lorg/mortbay/jetty/servlet/AbstractSessionManager$Session;->this$0:Lorg/mortbay/jetty/servlet/AbstractSessionManager;

    iget-object v3, v3, Lorg/mortbay/jetty/servlet/AbstractSessionManager;->_sessionAttributeListeners:Ljava/lang/Object;

    invoke-static {v3, v1}, Lorg/mortbay/util/LazyList;->get(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljavax/servlet/http/HttpSessionAttributeListener;

    invoke-interface {v3, v0}, Ljavax/servlet/http/HttpSessionAttributeListener;->attributeRemoved(Ljavax/servlet/http/HttpSessionBindingEvent;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1028
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public removeValue(Ljava/lang/String;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 1041
    invoke-virtual {p0, p1}, Lorg/mortbay/jetty/servlet/AbstractSessionManager$Session;->removeAttribute(Ljava/lang/String;)V

    .line 1042
    return-void
.end method

.method public declared-synchronized setAttribute(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 5
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/Object;

    .prologue
    .line 1047
    monitor-enter p0

    if-nez p2, :cond_1

    .line 1049
    :try_start_0
    invoke-virtual {p0, p1}, Lorg/mortbay/jetty/servlet/AbstractSessionManager$Session;->removeAttribute(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1081
    :cond_0
    monitor-exit p0

    return-void

    .line 1053
    :cond_1
    :try_start_1
    iget-boolean v4, p0, Lorg/mortbay/jetty/servlet/AbstractSessionManager$Session;->_invalid:Z

    if-eqz v4, :cond_2

    .line 1054
    new-instance v4, Ljava/lang/IllegalStateException;

    invoke-direct {v4}, Ljava/lang/IllegalStateException;-><init>()V

    throw v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1047
    :catchall_0
    move-exception v4

    monitor-exit p0

    throw v4

    .line 1055
    :cond_2
    :try_start_2
    iget-object v4, p0, Lorg/mortbay/jetty/servlet/AbstractSessionManager$Session;->_values:Ljava/util/Map;

    if-nez v4, :cond_3

    .line 1056
    invoke-virtual {p0}, Lorg/mortbay/jetty/servlet/AbstractSessionManager$Session;->newAttributeMap()Ljava/util/Map;

    move-result-object v4

    iput-object v4, p0, Lorg/mortbay/jetty/servlet/AbstractSessionManager$Session;->_values:Ljava/util/Map;

    .line 1057
    :cond_3
    iget-object v4, p0, Lorg/mortbay/jetty/servlet/AbstractSessionManager$Session;->_values:Ljava/util/Map;

    invoke-interface {v4, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 1059
    .local v3, "oldValue":Ljava/lang/Object;
    if-eqz v3, :cond_4

    invoke-virtual {p2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 1061
    :cond_4
    invoke-virtual {p0, p1, v3}, Lorg/mortbay/jetty/servlet/AbstractSessionManager$Session;->unbindValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1062
    invoke-virtual {p0, p1, p2}, Lorg/mortbay/jetty/servlet/AbstractSessionManager$Session;->bindValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1064
    iget-object v4, p0, Lorg/mortbay/jetty/servlet/AbstractSessionManager$Session;->this$0:Lorg/mortbay/jetty/servlet/AbstractSessionManager;

    iget-object v4, v4, Lorg/mortbay/jetty/servlet/AbstractSessionManager;->_sessionAttributeListeners:Ljava/lang/Object;

    if-eqz v4, :cond_0

    .line 1066
    new-instance v0, Ljavax/servlet/http/HttpSessionBindingEvent;

    if-nez v3, :cond_5

    move-object v4, p2

    :goto_0
    invoke-direct {v0, p0, p1, v4}, Ljavax/servlet/http/HttpSessionBindingEvent;-><init>(Ljavax/servlet/http/HttpSession;Ljava/lang/String;Ljava/lang/Object;)V

    .line 1068
    .local v0, "event":Ljavax/servlet/http/HttpSessionBindingEvent;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    iget-object v4, p0, Lorg/mortbay/jetty/servlet/AbstractSessionManager$Session;->this$0:Lorg/mortbay/jetty/servlet/AbstractSessionManager;

    iget-object v4, v4, Lorg/mortbay/jetty/servlet/AbstractSessionManager;->_sessionAttributeListeners:Ljava/lang/Object;

    invoke-static {v4}, Lorg/mortbay/util/LazyList;->size(Ljava/lang/Object;)I

    move-result v4

    if-ge v1, v4, :cond_0

    .line 1070
    iget-object v4, p0, Lorg/mortbay/jetty/servlet/AbstractSessionManager$Session;->this$0:Lorg/mortbay/jetty/servlet/AbstractSessionManager;

    iget-object v4, v4, Lorg/mortbay/jetty/servlet/AbstractSessionManager;->_sessionAttributeListeners:Ljava/lang/Object;

    invoke-static {v4, v1}, Lorg/mortbay/util/LazyList;->get(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljavax/servlet/http/HttpSessionAttributeListener;

    .line 1072
    .local v2, "l":Ljavax/servlet/http/HttpSessionAttributeListener;
    if-nez v3, :cond_6

    .line 1073
    invoke-interface {v2, v0}, Ljavax/servlet/http/HttpSessionAttributeListener;->attributeAdded(Ljavax/servlet/http/HttpSessionBindingEvent;)V

    .line 1068
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .end local v0    # "event":Ljavax/servlet/http/HttpSessionBindingEvent;
    .end local v1    # "i":I
    .end local v2    # "l":Ljavax/servlet/http/HttpSessionAttributeListener;
    :cond_5
    move-object v4, v3

    .line 1066
    goto :goto_0

    .line 1074
    .restart local v0    # "event":Ljavax/servlet/http/HttpSessionBindingEvent;
    .restart local v1    # "i":I
    .restart local v2    # "l":Ljavax/servlet/http/HttpSessionAttributeListener;
    :cond_6
    if-nez p2, :cond_7

    .line 1075
    invoke-interface {v2, v0}, Ljavax/servlet/http/HttpSessionAttributeListener;->attributeRemoved(Ljavax/servlet/http/HttpSessionBindingEvent;)V

    goto :goto_2

    .line 1077
    :cond_7
    invoke-interface {v2, v0}, Ljavax/servlet/http/HttpSessionAttributeListener;->attributeReplaced(Ljavax/servlet/http/HttpSessionBindingEvent;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_2
.end method

.method public setIdChanged(Z)V
    .locals 0
    .param p1, "changed"    # Z

    .prologue
    .line 1086
    iput-boolean p1, p0, Lorg/mortbay/jetty/servlet/AbstractSessionManager$Session;->_idChanged:Z

    .line 1087
    return-void
.end method

.method public setMaxInactiveInterval(I)V
    .locals 4
    .param p1, "secs"    # I

    .prologue
    .line 1092
    int-to-long v0, p1

    const-wide/16 v2, 0x3e8

    mul-long/2addr v0, v2

    iput-wide v0, p0, Lorg/mortbay/jetty/servlet/AbstractSessionManager$Session;->_maxIdleMs:J

    .line 1093
    return-void
.end method

.method protected timeout()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x1

    .line 919
    iget-object v0, p0, Lorg/mortbay/jetty/servlet/AbstractSessionManager$Session;->this$0:Lorg/mortbay/jetty/servlet/AbstractSessionManager;

    invoke-virtual {v0, p0, v1}, Lorg/mortbay/jetty/servlet/AbstractSessionManager;->removeSession(Lorg/mortbay/jetty/servlet/AbstractSessionManager$Session;Z)V

    .line 922
    monitor-enter p0

    .line 924
    :try_start_0
    iget-boolean v0, p0, Lorg/mortbay/jetty/servlet/AbstractSessionManager$Session;->_invalid:Z

    if-nez v0, :cond_0

    .line 926
    iget v0, p0, Lorg/mortbay/jetty/servlet/AbstractSessionManager$Session;->_requests:I

    if-gtz v0, :cond_1

    .line 927
    invoke-virtual {p0}, Lorg/mortbay/jetty/servlet/AbstractSessionManager$Session;->doInvalidate()V

    .line 931
    :cond_0
    :goto_0
    monitor-exit p0

    .line 932
    return-void

    .line 929
    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/mortbay/jetty/servlet/AbstractSessionManager$Session;->_doInvalidate:Z

    goto :goto_0

    .line 931
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 1098
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {p0}, Lorg/mortbay/jetty/servlet/AbstractSessionManager$Session;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, "@"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected unbindValue(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/Object;

    .prologue
    .line 1128
    if-eqz p2, :cond_0

    instance-of v0, p2, Ljavax/servlet/http/HttpSessionBindingListener;

    if-eqz v0, :cond_0

    .line 1129
    check-cast p2, Ljavax/servlet/http/HttpSessionBindingListener;

    .end local p2    # "value":Ljava/lang/Object;
    new-instance v0, Ljavax/servlet/http/HttpSessionBindingEvent;

    invoke-direct {v0, p0, p1}, Ljavax/servlet/http/HttpSessionBindingEvent;-><init>(Ljavax/servlet/http/HttpSession;Ljava/lang/String;)V

    invoke-interface {p2, v0}, Ljavax/servlet/http/HttpSessionBindingListener;->valueUnbound(Ljavax/servlet/http/HttpSessionBindingEvent;)V

    .line 1130
    :cond_0
    return-void
.end method

.method protected declared-synchronized willPassivate()V
    .locals 6

    .prologue
    .line 1135
    monitor-enter p0

    :try_start_0
    new-instance v1, Ljavax/servlet/http/HttpSessionEvent;

    invoke-direct {v1, p0}, Ljavax/servlet/http/HttpSessionEvent;-><init>(Ljavax/servlet/http/HttpSession;)V

    .line 1136
    .local v1, "event":Ljavax/servlet/http/HttpSessionEvent;
    iget-object v5, p0, Lorg/mortbay/jetty/servlet/AbstractSessionManager$Session;->_values:Ljava/util/Map;

    invoke-interface {v5}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "iter":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 1138
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    .line 1139
    .local v4, "value":Ljava/lang/Object;
    instance-of v5, v4, Ljavax/servlet/http/HttpSessionActivationListener;

    if-eqz v5, :cond_0

    .line 1141
    move-object v0, v4

    check-cast v0, Ljavax/servlet/http/HttpSessionActivationListener;

    move-object v3, v0

    .line 1142
    .local v3, "listener":Ljavax/servlet/http/HttpSessionActivationListener;
    invoke-interface {v3, v1}, Ljavax/servlet/http/HttpSessionActivationListener;->sessionWillPassivate(Ljavax/servlet/http/HttpSessionEvent;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 1135
    .end local v1    # "event":Ljavax/servlet/http/HttpSessionEvent;
    .end local v2    # "iter":Ljava/util/Iterator;
    .end local v3    # "listener":Ljavax/servlet/http/HttpSessionActivationListener;
    .end local v4    # "value":Ljava/lang/Object;
    :catchall_0
    move-exception v5

    monitor-exit p0

    throw v5

    .line 1145
    .restart local v1    # "event":Ljavax/servlet/http/HttpSessionEvent;
    .restart local v2    # "iter":Ljava/util/Iterator;
    :cond_1
    monitor-exit p0

    return-void
.end method
