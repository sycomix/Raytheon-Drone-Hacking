.class public Lorg/mortbay/component/Container;
.super Ljava/lang/Object;
.source "Container.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/mortbay/component/Container$1;,
        Lorg/mortbay/component/Container$Listener;,
        Lorg/mortbay/component/Container$Relationship;
    }
.end annotation


# instance fields
.field private _listeners:Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 291
    return-void
.end method

.method private add(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;)V
    .locals 7
    .param p1, "parent"    # Ljava/lang/Object;
    .param p2, "child"    # Ljava/lang/Object;
    .param p3, "relationship"    # Ljava/lang/String;

    .prologue
    .line 200
    invoke-static {}, Lorg/mortbay/log/Log;->isDebugEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 201
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "Container "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, " + "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, " as "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/mortbay/log/Log;->debug(Ljava/lang/String;)V

    .line 202
    :cond_0
    iget-object v1, p0, Lorg/mortbay/component/Container;->_listeners:Ljava/lang/Object;

    if-eqz v1, :cond_1

    .line 204
    new-instance v0, Lorg/mortbay/component/Container$Relationship;

    const/4 v5, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    invoke-direct/range {v0 .. v5}, Lorg/mortbay/component/Container$Relationship;-><init>(Lorg/mortbay/component/Container;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;Lorg/mortbay/component/Container$1;)V

    .line 205
    .local v0, "event":Lorg/mortbay/component/Container$Relationship;
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_0
    iget-object v1, p0, Lorg/mortbay/component/Container;->_listeners:Ljava/lang/Object;

    invoke-static {v1}, Lorg/mortbay/util/LazyList;->size(Ljava/lang/Object;)I

    move-result v1

    if-ge v6, v1, :cond_1

    .line 206
    iget-object v1, p0, Lorg/mortbay/component/Container;->_listeners:Ljava/lang/Object;

    invoke-static {v1, v6}, Lorg/mortbay/util/LazyList;->get(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/mortbay/component/Container$Listener;

    invoke-interface {v1, v0}, Lorg/mortbay/component/Container$Listener;->add(Lorg/mortbay/component/Container$Relationship;)V

    .line 205
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 208
    .end local v0    # "event":Lorg/mortbay/component/Container$Relationship;
    .end local v6    # "i":I
    :cond_1
    return-void
.end method

.method private remove(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;)V
    .locals 7
    .param p1, "parent"    # Ljava/lang/Object;
    .param p2, "child"    # Ljava/lang/Object;
    .param p3, "relationship"    # Ljava/lang/String;

    .prologue
    .line 218
    invoke-static {}, Lorg/mortbay/log/Log;->isDebugEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 219
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "Container "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, " - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, " as "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/mortbay/log/Log;->debug(Ljava/lang/String;)V

    .line 220
    :cond_0
    iget-object v1, p0, Lorg/mortbay/component/Container;->_listeners:Ljava/lang/Object;

    if-eqz v1, :cond_1

    .line 222
    new-instance v0, Lorg/mortbay/component/Container$Relationship;

    const/4 v5, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    invoke-direct/range {v0 .. v5}, Lorg/mortbay/component/Container$Relationship;-><init>(Lorg/mortbay/component/Container;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;Lorg/mortbay/component/Container$1;)V

    .line 223
    .local v0, "event":Lorg/mortbay/component/Container$Relationship;
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_0
    iget-object v1, p0, Lorg/mortbay/component/Container;->_listeners:Ljava/lang/Object;

    invoke-static {v1}, Lorg/mortbay/util/LazyList;->size(Ljava/lang/Object;)I

    move-result v1

    if-ge v6, v1, :cond_1

    .line 224
    iget-object v1, p0, Lorg/mortbay/component/Container;->_listeners:Ljava/lang/Object;

    invoke-static {v1, v6}, Lorg/mortbay/util/LazyList;->get(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/mortbay/component/Container$Listener;

    invoke-interface {v1, v0}, Lorg/mortbay/component/Container$Listener;->remove(Lorg/mortbay/component/Container$Relationship;)V

    .line 223
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 226
    .end local v0    # "event":Lorg/mortbay/component/Container$Relationship;
    .end local v6    # "i":I
    :cond_1
    return-void
.end method


# virtual methods
.method public addBean(Ljava/lang/Object;)V
    .locals 3
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    .line 172
    iget-object v2, p0, Lorg/mortbay/component/Container;->_listeners:Ljava/lang/Object;

    if-eqz v2, :cond_0

    .line 174
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v2, p0, Lorg/mortbay/component/Container;->_listeners:Ljava/lang/Object;

    invoke-static {v2}, Lorg/mortbay/util/LazyList;->size(Ljava/lang/Object;)I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 176
    iget-object v2, p0, Lorg/mortbay/component/Container;->_listeners:Ljava/lang/Object;

    invoke-static {v2, v0}, Lorg/mortbay/util/LazyList;->get(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/mortbay/component/Container$Listener;

    .line 177
    .local v1, "listener":Lorg/mortbay/component/Container$Listener;
    invoke-interface {v1, p1}, Lorg/mortbay/component/Container$Listener;->addBean(Ljava/lang/Object;)V

    .line 174
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 180
    .end local v0    # "i":I
    .end local v1    # "listener":Lorg/mortbay/component/Container$Listener;
    :cond_0
    return-void
.end method

.method public declared-synchronized addEventListener(Lorg/mortbay/component/Container$Listener;)V
    .locals 1
    .param p1, "listener"    # Lorg/mortbay/component/Container$Listener;

    .prologue
    .line 48
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lorg/mortbay/component/Container;->_listeners:Ljava/lang/Object;

    invoke-static {v0, p1}, Lorg/mortbay/util/LazyList;->add(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lorg/mortbay/component/Container;->_listeners:Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 49
    monitor-exit p0

    return-void

    .line 48
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public removeBean(Ljava/lang/Object;)V
    .locals 2
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    .line 185
    iget-object v1, p0, Lorg/mortbay/component/Container;->_listeners:Ljava/lang/Object;

    if-eqz v1, :cond_0

    .line 187
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lorg/mortbay/component/Container;->_listeners:Ljava/lang/Object;

    invoke-static {v1}, Lorg/mortbay/util/LazyList;->size(Ljava/lang/Object;)I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 188
    iget-object v1, p0, Lorg/mortbay/component/Container;->_listeners:Ljava/lang/Object;

    invoke-static {v1, v0}, Lorg/mortbay/util/LazyList;->get(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/mortbay/component/Container$Listener;

    invoke-interface {v1, p1}, Lorg/mortbay/component/Container$Listener;->removeBean(Ljava/lang/Object;)V

    .line 187
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 190
    .end local v0    # "i":I
    :cond_0
    return-void
.end method

.method public declared-synchronized removeEventListener(Lorg/mortbay/component/Container$Listener;)V
    .locals 1
    .param p1, "listener"    # Lorg/mortbay/component/Container$Listener;

    .prologue
    .line 53
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lorg/mortbay/component/Container;->_listeners:Ljava/lang/Object;

    invoke-static {v0, p1}, Lorg/mortbay/util/LazyList;->remove(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lorg/mortbay/component/Container;->_listeners:Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 54
    monitor-exit p0

    return-void

    .line 53
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized update(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;)V
    .locals 1
    .param p1, "parent"    # Ljava/lang/Object;
    .param p2, "oldChild"    # Ljava/lang/Object;
    .param p3, "child"    # Ljava/lang/Object;
    .param p4, "relationship"    # Ljava/lang/String;

    .prologue
    .line 65
    monitor-enter p0

    if-eqz p2, :cond_0

    :try_start_0
    invoke-virtual {p2, p3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 66
    invoke-direct {p0, p1, p2, p4}, Lorg/mortbay/component/Container;->remove(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;)V

    .line 67
    :cond_0
    if-eqz p3, :cond_1

    invoke-virtual {p3, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 68
    invoke-direct {p0, p1, p3, p4}, Lorg/mortbay/component/Container;->add(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 69
    :cond_1
    monitor-exit p0

    return-void

    .line 65
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized update(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;Z)V
    .locals 1
    .param p1, "parent"    # Ljava/lang/Object;
    .param p2, "oldChild"    # Ljava/lang/Object;
    .param p3, "child"    # Ljava/lang/Object;
    .param p4, "relationship"    # Ljava/lang/String;
    .param p5, "addRemove"    # Z

    .prologue
    .line 81
    monitor-enter p0

    if-eqz p2, :cond_0

    :try_start_0
    invoke-virtual {p2, p3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 83
    invoke-direct {p0, p1, p2, p4}, Lorg/mortbay/component/Container;->remove(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;)V

    .line 84
    if-eqz p5, :cond_0

    .line 85
    invoke-virtual {p0, p2}, Lorg/mortbay/component/Container;->removeBean(Ljava/lang/Object;)V

    .line 88
    :cond_0
    if-eqz p3, :cond_2

    invoke-virtual {p3, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 90
    if-eqz p5, :cond_1

    .line 91
    invoke-virtual {p0, p3}, Lorg/mortbay/component/Container;->addBean(Ljava/lang/Object;)V

    .line 92
    :cond_1
    invoke-direct {p0, p1, p3, p4}, Lorg/mortbay/component/Container;->add(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 94
    :cond_2
    monitor-exit p0

    return-void

    .line 81
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized update(Ljava/lang/Object;[Ljava/lang/Object;[Ljava/lang/Object;Ljava/lang/String;)V
    .locals 6
    .param p1, "parent"    # Ljava/lang/Object;
    .param p2, "oldChildren"    # [Ljava/lang/Object;
    .param p3, "children"    # [Ljava/lang/Object;
    .param p4, "relationship"    # Ljava/lang/String;

    .prologue
    .line 106
    monitor-enter p0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    :try_start_0
    invoke-virtual/range {v0 .. v5}, Lorg/mortbay/component/Container;->update(Ljava/lang/Object;[Ljava/lang/Object;[Ljava/lang/Object;Ljava/lang/String;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 107
    monitor-exit p0

    return-void

    .line 106
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized update(Ljava/lang/Object;[Ljava/lang/Object;[Ljava/lang/Object;Ljava/lang/String;Z)V
    .locals 8
    .param p1, "parent"    # Ljava/lang/Object;
    .param p2, "oldChildren"    # [Ljava/lang/Object;
    .param p3, "children"    # [Ljava/lang/Object;
    .param p4, "relationship"    # Ljava/lang/String;
    .param p5, "addRemove"    # Z

    .prologue
    .line 120
    monitor-enter p0

    const/4 v4, 0x0

    .line 121
    .local v4, "newChildren":[Ljava/lang/Object;
    if-eqz p3, :cond_2

    .line 123
    :try_start_0
    array-length v6, p3

    new-array v4, v6, [Ljava/lang/Object;

    .line 125
    array-length v0, p3

    .local v0, "i":I
    move v1, v0

    .end local v0    # "i":I
    .local v1, "i":I
    :goto_0
    add-int/lit8 v0, v1, -0x1

    .end local v1    # "i":I
    .restart local v0    # "i":I
    if-lez v1, :cond_2

    .line 127
    const/4 v5, 0x1

    .line 128
    .local v5, "new_child":Z
    if-eqz p2, :cond_0

    .line 130
    array-length v2, p2

    .local v2, "j":I
    move v3, v2

    .end local v2    # "j":I
    .local v3, "j":I
    :goto_1
    add-int/lit8 v2, v3, -0x1

    .end local v3    # "j":I
    .restart local v2    # "j":I
    if-lez v3, :cond_0

    .line 132
    aget-object v6, p3, v0

    if-eqz v6, :cond_8

    aget-object v6, p3, v0

    aget-object v7, p2, v2

    invoke-virtual {v6, v7}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_8

    .line 134
    const/4 v6, 0x0

    aput-object v6, p2, v2

    .line 135
    const/4 v5, 0x0

    move v3, v2

    .end local v2    # "j":I
    .restart local v3    # "j":I
    goto :goto_1

    .line 139
    .end local v3    # "j":I
    :cond_0
    if-eqz v5, :cond_1

    .line 140
    aget-object v6, p3, v0

    aput-object v6, v4, v0

    :cond_1
    move v1, v0

    .line 141
    .end local v0    # "i":I
    .restart local v1    # "i":I
    goto :goto_0

    .line 144
    .end local v1    # "i":I
    .end local v5    # "new_child":Z
    :cond_2
    if-eqz p2, :cond_3

    .line 146
    array-length v0, p2

    .restart local v0    # "i":I
    move v1, v0

    .end local v0    # "i":I
    .restart local v1    # "i":I
    :goto_2
    add-int/lit8 v0, v1, -0x1

    .end local v1    # "i":I
    .restart local v0    # "i":I
    if-lez v1, :cond_3

    .line 148
    aget-object v6, p2, v0

    if-eqz v6, :cond_7

    .line 150
    aget-object v6, p2, v0

    invoke-direct {p0, p1, v6, p4}, Lorg/mortbay/component/Container;->remove(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;)V

    .line 151
    if-eqz p5, :cond_7

    .line 152
    aget-object v6, p2, v0

    invoke-virtual {p0, v6}, Lorg/mortbay/component/Container;->removeBean(Ljava/lang/Object;)V

    move v1, v0

    .end local v0    # "i":I
    .restart local v1    # "i":I
    goto :goto_2

    .line 157
    .end local v1    # "i":I
    :cond_3
    if-eqz v4, :cond_6

    .line 159
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_3
    array-length v6, v4

    if-ge v0, v6, :cond_6

    .line 160
    aget-object v6, v4, v0

    if-eqz v6, :cond_5

    .line 162
    if-eqz p5, :cond_4

    .line 163
    aget-object v6, v4, v0

    invoke-virtual {p0, v6}, Lorg/mortbay/component/Container;->addBean(Ljava/lang/Object;)V

    .line 164
    :cond_4
    aget-object v6, v4, v0

    invoke-direct {p0, p1, v6, p4}, Lorg/mortbay/component/Container;->add(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 159
    :cond_5
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 167
    .end local v0    # "i":I
    :cond_6
    monitor-exit p0

    return-void

    .line 120
    :catchall_0
    move-exception v6

    monitor-exit p0

    throw v6

    .restart local v0    # "i":I
    :cond_7
    move v1, v0

    .end local v0    # "i":I
    .restart local v1    # "i":I
    goto :goto_2

    .end local v1    # "i":I
    .restart local v0    # "i":I
    .restart local v2    # "j":I
    .restart local v5    # "new_child":Z
    :cond_8
    move v3, v2

    .end local v2    # "j":I
    .restart local v3    # "j":I
    goto :goto_1
.end method
