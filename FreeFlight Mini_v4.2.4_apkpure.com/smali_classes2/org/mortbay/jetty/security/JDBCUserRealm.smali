.class public Lorg/mortbay/jetty/security/JDBCUserRealm;
.super Lorg/mortbay/jetty/security/HashUserRealm;
.source "JDBCUserRealm.java"

# interfaces
.implements Lorg/mortbay/jetty/security/UserRealm;


# instance fields
.field private _cacheTime:I

.field private _con:Ljava/sql/Connection;

.field private _jdbcDriver:Ljava/lang/String;

.field private _lastHashPurge:J

.field private _password:Ljava/lang/String;

.field private _roleSql:Ljava/lang/String;

.field private _roleTable:Ljava/lang/String;

.field private _roleTableKey:Ljava/lang/String;

.field private _roleTableRoleField:Ljava/lang/String;

.field private _url:Ljava/lang/String;

.field private _userName:Ljava/lang/String;

.field private _userRoleTable:Ljava/lang/String;

.field private _userRoleTableRoleKey:Ljava/lang/String;

.field private _userRoleTableUserKey:Ljava/lang/String;

.field private _userSql:Ljava/lang/String;

.field private _userTable:Ljava/lang/String;

.field private _userTableKey:Ljava/lang/String;

.field private _userTablePasswordField:Ljava/lang/String;

.field private _userTableUserField:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 85
    invoke-direct {p0}, Lorg/mortbay/jetty/security/HashUserRealm;-><init>()V

    .line 86
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 94
    invoke-direct {p0, p1}, Lorg/mortbay/jetty/security/HashUserRealm;-><init>(Ljava/lang/String;)V

    .line 95
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "config"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;,
            Ljava/lang/InstantiationException;,
            Ljava/lang/IllegalAccessException;
        }
    .end annotation

    .prologue
    .line 110
    invoke-direct {p0, p1}, Lorg/mortbay/jetty/security/HashUserRealm;-><init>(Ljava/lang/String;)V

    .line 111
    invoke-virtual {p0, p2}, Lorg/mortbay/jetty/security/JDBCUserRealm;->setConfig(Ljava/lang/String;)V

    .line 112
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    iget-object v1, p0, Lorg/mortbay/jetty/security/JDBCUserRealm;->_jdbcDriver:Ljava/lang/String;

    invoke-static {v0, v1}, Lorg/mortbay/util/Loader;->loadClass(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    .line 113
    return-void
.end method

.method private closeConnection()V
    .locals 2

    .prologue
    .line 279
    iget-object v1, p0, Lorg/mortbay/jetty/security/JDBCUserRealm;->_con:Ljava/sql/Connection;

    if-eqz v1, :cond_1

    .line 281
    invoke-static {}, Lorg/mortbay/log/Log;->isDebugEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "Closing db connection for JDBCUserRealm"

    invoke-static {v1}, Lorg/mortbay/log/Log;->debug(Ljava/lang/String;)V

    .line 282
    :cond_0
    :try_start_0
    iget-object v1, p0, Lorg/mortbay/jetty/security/JDBCUserRealm;->_con:Ljava/sql/Connection;

    invoke-interface {v1}, Ljava/sql/Connection;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 284
    :cond_1
    :goto_0
    const/4 v1, 0x0

    iput-object v1, p0, Lorg/mortbay/jetty/security/JDBCUserRealm;->_con:Ljava/sql/Connection;

    .line 285
    return-void

    .line 282
    :catch_0
    move-exception v0

    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Lorg/mortbay/log/Log;->ignore(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method private loadUser(Ljava/lang/String;)V
    .locals 6
    .param p1, "username"    # Ljava/lang/String;

    .prologue
    .line 240
    :try_start_0
    iget-object v4, p0, Lorg/mortbay/jetty/security/JDBCUserRealm;->_con:Ljava/sql/Connection;

    if-nez v4, :cond_0

    .line 241
    invoke-virtual {p0}, Lorg/mortbay/jetty/security/JDBCUserRealm;->connectDatabase()V

    .line 243
    :cond_0
    iget-object v4, p0, Lorg/mortbay/jetty/security/JDBCUserRealm;->_con:Ljava/sql/Connection;

    if-nez v4, :cond_2

    .line 244
    new-instance v4, Ljava/sql/SQLException;

    const-string v5, "Can\'t connect to database"

    invoke-direct {v4, v5}, Ljava/sql/SQLException;-><init>(Ljava/lang/String;)V

    throw v4
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 266
    :catch_0
    move-exception v0

    .line 268
    .local v0, "e":Ljava/sql/SQLException;
    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    const-string v5, "UserRealm "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    invoke-virtual {p0}, Lorg/mortbay/jetty/security/JDBCUserRealm;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    const-string v5, " could not load user information from database"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, v0}, Lorg/mortbay/log/Log;->warn(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 270
    invoke-direct {p0}, Lorg/mortbay/jetty/security/JDBCUserRealm;->closeConnection()V

    .line 272
    .end local v0    # "e":Ljava/sql/SQLException;
    :cond_1
    :goto_0
    return-void

    .line 246
    :cond_2
    :try_start_1
    iget-object v4, p0, Lorg/mortbay/jetty/security/JDBCUserRealm;->_con:Ljava/sql/Connection;

    iget-object v5, p0, Lorg/mortbay/jetty/security/JDBCUserRealm;->_userSql:Ljava/lang/String;

    invoke-interface {v4, v5}, Ljava/sql/Connection;->prepareStatement(Ljava/lang/String;)Ljava/sql/PreparedStatement;

    move-result-object v3

    .line 247
    .local v3, "stat":Ljava/sql/PreparedStatement;
    const/4 v4, 0x1

    invoke-interface {v3, v4, p1}, Ljava/sql/PreparedStatement;->setObject(ILjava/lang/Object;)V

    .line 248
    invoke-interface {v3}, Ljava/sql/PreparedStatement;->executeQuery()Ljava/sql/ResultSet;

    move-result-object v2

    .line 250
    .local v2, "rs":Ljava/sql/ResultSet;
    invoke-interface {v2}, Ljava/sql/ResultSet;->next()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 252
    iget-object v4, p0, Lorg/mortbay/jetty/security/JDBCUserRealm;->_userTableKey:Ljava/lang/String;

    invoke-interface {v2, v4}, Ljava/sql/ResultSet;->getInt(Ljava/lang/String;)I

    move-result v1

    .line 253
    .local v1, "key":I
    iget-object v4, p0, Lorg/mortbay/jetty/security/JDBCUserRealm;->_userTablePasswordField:Ljava/lang/String;

    invoke-interface {v2, v4}, Ljava/sql/ResultSet;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, p1, v4}, Lorg/mortbay/jetty/security/JDBCUserRealm;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 254
    invoke-interface {v3}, Ljava/sql/PreparedStatement;->close()V

    .line 256
    iget-object v4, p0, Lorg/mortbay/jetty/security/JDBCUserRealm;->_con:Ljava/sql/Connection;

    iget-object v5, p0, Lorg/mortbay/jetty/security/JDBCUserRealm;->_roleSql:Ljava/lang/String;

    invoke-interface {v4, v5}, Ljava/sql/Connection;->prepareStatement(Ljava/lang/String;)Ljava/sql/PreparedStatement;

    move-result-object v3

    .line 257
    const/4 v4, 0x1

    invoke-interface {v3, v4, v1}, Ljava/sql/PreparedStatement;->setInt(II)V

    .line 258
    invoke-interface {v3}, Ljava/sql/PreparedStatement;->executeQuery()Ljava/sql/ResultSet;

    move-result-object v2

    .line 260
    :goto_1
    invoke-interface {v2}, Ljava/sql/ResultSet;->next()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 261
    iget-object v4, p0, Lorg/mortbay/jetty/security/JDBCUserRealm;->_roleTableRoleField:Ljava/lang/String;

    invoke-interface {v2, v4}, Ljava/sql/ResultSet;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, p1, v4}, Lorg/mortbay/jetty/security/JDBCUserRealm;->addUserToRole(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 263
    :cond_3
    invoke-interface {v3}, Ljava/sql/PreparedStatement;->close()V
    :try_end_1
    .catch Ljava/sql/SQLException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method


# virtual methods
.method public authenticate(Ljava/lang/String;Ljava/lang/Object;Lorg/mortbay/jetty/Request;)Ljava/security/Principal;
    .locals 8
    .param p1, "username"    # Ljava/lang/String;
    .param p2, "credentials"    # Ljava/lang/Object;
    .param p3, "request"    # Lorg/mortbay/jetty/Request;

    .prologue
    .line 199
    monitor-enter p0

    .line 201
    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 202
    .local v0, "now":J
    iget-wide v4, p0, Lorg/mortbay/jetty/security/JDBCUserRealm;->_lastHashPurge:J

    sub-long v4, v0, v4

    iget v3, p0, Lorg/mortbay/jetty/security/JDBCUserRealm;->_cacheTime:I

    int-to-long v6, v3

    cmp-long v3, v4, v6

    if-gtz v3, :cond_0

    iget v3, p0, Lorg/mortbay/jetty/security/JDBCUserRealm;->_cacheTime:I

    if-nez v3, :cond_1

    .line 204
    :cond_0
    iget-object v3, p0, Lorg/mortbay/jetty/security/JDBCUserRealm;->_users:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->clear()V

    .line 205
    iget-object v3, p0, Lorg/mortbay/jetty/security/JDBCUserRealm;->_roles:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->clear()V

    .line 206
    iput-wide v0, p0, Lorg/mortbay/jetty/security/JDBCUserRealm;->_lastHashPurge:J

    .line 207
    invoke-direct {p0}, Lorg/mortbay/jetty/security/JDBCUserRealm;->closeConnection()V

    .line 209
    :cond_1
    invoke-super {p0, p1}, Lorg/mortbay/jetty/security/HashUserRealm;->getPrincipal(Ljava/lang/String;)Ljava/security/Principal;

    move-result-object v2

    .line 210
    .local v2, "user":Ljava/security/Principal;
    if-nez v2, :cond_2

    .line 212
    invoke-direct {p0, p1}, Lorg/mortbay/jetty/security/JDBCUserRealm;->loadUser(Ljava/lang/String;)V

    .line 213
    invoke-super {p0, p1}, Lorg/mortbay/jetty/security/HashUserRealm;->getPrincipal(Ljava/lang/String;)Ljava/security/Principal;

    .line 215
    :cond_2
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 216
    invoke-super {p0, p1, p2, p3}, Lorg/mortbay/jetty/security/HashUserRealm;->authenticate(Ljava/lang/String;Ljava/lang/Object;Lorg/mortbay/jetty/Request;)Ljava/security/Principal;

    move-result-object v3

    return-object v3

    .line 215
    .end local v0    # "now":J
    .end local v2    # "user":Ljava/security/Principal;
    :catchall_0
    move-exception v3

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v3
.end method

.method public connectDatabase()V
    .locals 4

    .prologue
    .line 179
    :try_start_0
    iget-object v1, p0, Lorg/mortbay/jetty/security/JDBCUserRealm;->_jdbcDriver:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    .line 180
    iget-object v1, p0, Lorg/mortbay/jetty/security/JDBCUserRealm;->_url:Ljava/lang/String;

    iget-object v2, p0, Lorg/mortbay/jetty/security/JDBCUserRealm;->_userName:Ljava/lang/String;

    iget-object v3, p0, Lorg/mortbay/jetty/security/JDBCUserRealm;->_password:Ljava/lang/String;

    invoke-static {v1, v2, v3}, Ljava/sql/DriverManager;->getConnection(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/sql/Connection;

    move-result-object v1

    iput-object v1, p0, Lorg/mortbay/jetty/security/JDBCUserRealm;->_con:Ljava/sql/Connection;
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_1

    .line 192
    :goto_0
    return-void

    .line 182
    :catch_0
    move-exception v0

    .line 184
    .local v0, "e":Ljava/sql/SQLException;
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "UserRealm "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {p0}, Lorg/mortbay/jetty/security/JDBCUserRealm;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, " could not connect to database; will try later"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Lorg/mortbay/log/Log;->warn(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 187
    .end local v0    # "e":Ljava/sql/SQLException;
    :catch_1
    move-exception v0

    .line 189
    .local v0, "e":Ljava/lang/ClassNotFoundException;
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "UserRealm "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {p0}, Lorg/mortbay/jetty/security/JDBCUserRealm;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, " could not connect to database; will try later"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Lorg/mortbay/log/Log;->warn(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public declared-synchronized isUserInRole(Ljava/security/Principal;Ljava/lang/String;)Z
    .locals 1
    .param p1, "user"    # Ljava/security/Principal;
    .param p2, "roleName"    # Ljava/lang/String;

    .prologue
    .line 227
    monitor-enter p0

    :try_start_0
    invoke-interface {p1}, Ljava/security/Principal;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-super {p0, v0}, Lorg/mortbay/jetty/security/HashUserRealm;->getPrincipal(Ljava/lang/String;)Ljava/security/Principal;

    move-result-object v0

    if-nez v0, :cond_0

    .line 228
    invoke-interface {p1}, Ljava/security/Principal;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/mortbay/jetty/security/JDBCUserRealm;->loadUser(Ljava/lang/String;)V

    .line 229
    :cond_0
    invoke-super {p0, p1, p2}, Lorg/mortbay/jetty/security/HashUserRealm;->isUserInRole(Ljava/security/Principal;Ljava/lang/String;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    monitor-exit p0

    return v0

    .line 227
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected loadConfig()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 123
    new-instance v1, Ljava/util/Properties;

    invoke-direct {v1}, Ljava/util/Properties;-><init>()V

    .line 125
    .local v1, "properties":Ljava/util/Properties;
    invoke-virtual {p0}, Lorg/mortbay/jetty/security/JDBCUserRealm;->getConfigResource()Lorg/mortbay/resource/Resource;

    move-result-object v2

    invoke-virtual {v2}, Lorg/mortbay/resource/Resource;->getInputStream()Ljava/io/InputStream;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/Properties;->load(Ljava/io/InputStream;)V

    .line 127
    const-string v2, "jdbcdriver"

    invoke-virtual {v1, v2}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lorg/mortbay/jetty/security/JDBCUserRealm;->_jdbcDriver:Ljava/lang/String;

    .line 128
    const-string v2, "url"

    invoke-virtual {v1, v2}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lorg/mortbay/jetty/security/JDBCUserRealm;->_url:Ljava/lang/String;

    .line 129
    const-string v2, "username"

    invoke-virtual {v1, v2}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lorg/mortbay/jetty/security/JDBCUserRealm;->_userName:Ljava/lang/String;

    .line 130
    const-string v2, "password"

    invoke-virtual {v1, v2}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lorg/mortbay/jetty/security/JDBCUserRealm;->_password:Ljava/lang/String;

    .line 131
    const-string v2, "usertable"

    invoke-virtual {v1, v2}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lorg/mortbay/jetty/security/JDBCUserRealm;->_userTable:Ljava/lang/String;

    .line 132
    const-string v2, "usertablekey"

    invoke-virtual {v1, v2}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lorg/mortbay/jetty/security/JDBCUserRealm;->_userTableKey:Ljava/lang/String;

    .line 133
    const-string v2, "usertableuserfield"

    invoke-virtual {v1, v2}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lorg/mortbay/jetty/security/JDBCUserRealm;->_userTableUserField:Ljava/lang/String;

    .line 134
    const-string v2, "usertablepasswordfield"

    invoke-virtual {v1, v2}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lorg/mortbay/jetty/security/JDBCUserRealm;->_userTablePasswordField:Ljava/lang/String;

    .line 135
    const-string v2, "roletable"

    invoke-virtual {v1, v2}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lorg/mortbay/jetty/security/JDBCUserRealm;->_roleTable:Ljava/lang/String;

    .line 136
    const-string v2, "roletablekey"

    invoke-virtual {v1, v2}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lorg/mortbay/jetty/security/JDBCUserRealm;->_roleTableKey:Ljava/lang/String;

    .line 137
    const-string v2, "roletablerolefield"

    invoke-virtual {v1, v2}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lorg/mortbay/jetty/security/JDBCUserRealm;->_roleTableRoleField:Ljava/lang/String;

    .line 138
    const-string v2, "userroletable"

    invoke-virtual {v1, v2}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lorg/mortbay/jetty/security/JDBCUserRealm;->_userRoleTable:Ljava/lang/String;

    .line 139
    const-string v2, "userroletableuserkey"

    invoke-virtual {v1, v2}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lorg/mortbay/jetty/security/JDBCUserRealm;->_userRoleTableUserKey:Ljava/lang/String;

    .line 140
    const-string v2, "userroletablerolekey"

    invoke-virtual {v1, v2}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lorg/mortbay/jetty/security/JDBCUserRealm;->_userRoleTableRoleKey:Ljava/lang/String;

    .line 142
    const-string v2, "cachetime"

    invoke-virtual {v1, v2}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 143
    .local v0, "cachetime":Ljava/lang/String;
    if-eqz v0, :cond_2

    new-instance v2, Ljava/lang/Integer;

    invoke-direct {v2, v0}, Ljava/lang/Integer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    :goto_0
    iput v2, p0, Lorg/mortbay/jetty/security/JDBCUserRealm;->_cacheTime:I

    .line 145
    iget-object v2, p0, Lorg/mortbay/jetty/security/JDBCUserRealm;->_jdbcDriver:Ljava/lang/String;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lorg/mortbay/jetty/security/JDBCUserRealm;->_jdbcDriver:Ljava/lang/String;

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lorg/mortbay/jetty/security/JDBCUserRealm;->_url:Ljava/lang/String;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lorg/mortbay/jetty/security/JDBCUserRealm;->_url:Ljava/lang/String;

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lorg/mortbay/jetty/security/JDBCUserRealm;->_userName:Ljava/lang/String;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lorg/mortbay/jetty/security/JDBCUserRealm;->_userName:Ljava/lang/String;

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lorg/mortbay/jetty/security/JDBCUserRealm;->_password:Ljava/lang/String;

    if-eqz v2, :cond_0

    iget v2, p0, Lorg/mortbay/jetty/security/JDBCUserRealm;->_cacheTime:I

    if-gez v2, :cond_1

    .line 151
    :cond_0
    invoke-static {}, Lorg/mortbay/log/Log;->isDebugEnabled()Z

    move-result v2

    if-eqz v2, :cond_1

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    const-string v3, "UserRealm "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {p0}, Lorg/mortbay/jetty/security/JDBCUserRealm;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v3, " has not been properly configured"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lorg/mortbay/log/Log;->debug(Ljava/lang/String;)V

    .line 154
    :cond_1
    iget v2, p0, Lorg/mortbay/jetty/security/JDBCUserRealm;->_cacheTime:I

    mul-int/lit16 v2, v2, 0x3e8

    iput v2, p0, Lorg/mortbay/jetty/security/JDBCUserRealm;->_cacheTime:I

    .line 155
    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lorg/mortbay/jetty/security/JDBCUserRealm;->_lastHashPurge:J

    .line 156
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    const-string v3, "select "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    iget-object v3, p0, Lorg/mortbay/jetty/security/JDBCUserRealm;->_userTableKey:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    iget-object v3, p0, Lorg/mortbay/jetty/security/JDBCUserRealm;->_userTablePasswordField:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v3, " from "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    iget-object v3, p0, Lorg/mortbay/jetty/security/JDBCUserRealm;->_userTable:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v3, " where "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    iget-object v3, p0, Lorg/mortbay/jetty/security/JDBCUserRealm;->_userTableUserField:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v3, " = ?"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lorg/mortbay/jetty/security/JDBCUserRealm;->_userSql:Ljava/lang/String;

    .line 160
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    const-string v3, "select r."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    iget-object v3, p0, Lorg/mortbay/jetty/security/JDBCUserRealm;->_roleTableRoleField:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v3, " from "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    iget-object v3, p0, Lorg/mortbay/jetty/security/JDBCUserRealm;->_roleTable:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v3, " r, "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    iget-object v3, p0, Lorg/mortbay/jetty/security/JDBCUserRealm;->_userRoleTable:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v3, " u where u."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    iget-object v3, p0, Lorg/mortbay/jetty/security/JDBCUserRealm;->_userRoleTableUserKey:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v3, " = ?"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v3, " and r."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    iget-object v3, p0, Lorg/mortbay/jetty/security/JDBCUserRealm;->_roleTableKey:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v3, " = u."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    iget-object v3, p0, Lorg/mortbay/jetty/security/JDBCUserRealm;->_userRoleTableRoleKey:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lorg/mortbay/jetty/security/JDBCUserRealm;->_roleSql:Ljava/lang/String;

    .line 166
    return-void

    .line 143
    :cond_2
    const/16 v2, 0x1e

    goto/16 :goto_0
.end method

.method public logout(Ljava/security/Principal;)V
    .locals 0
    .param p1, "user"    # Ljava/security/Principal;

    .prologue
    .line 170
    return-void
.end method
