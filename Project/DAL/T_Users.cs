﻿using System;
using System.Data;
using System.Text;
using System.Data.SqlClient;
using EShop.DBUtility;//Please add references
namespace EShop.DAL
{
	/// <summary>
	/// 数据访问类:T_Users
	/// </summary>
	public partial class T_Users
	{
		public T_Users()
		{}
		#region  BasicMethod

		/// <summary>
		/// 是否存在该记录
		/// </summary>
		public bool Exists(long UserID)
		{
			StringBuilder strSql=new StringBuilder();
			strSql.Append("select count(1) from T_Users");
			strSql.Append(" where UserID=@UserID ");
			SqlParameter[] parameters = {
					new SqlParameter("@UserID", SqlDbType.BigInt,8)			};
			parameters[0].Value = UserID;

			return DbHelperSQL.Exists(strSql.ToString(),parameters);
		}


		/// <summary>
		/// 增加一条数据
		/// </summary>
		public bool Add(EShop.Model.T_Users model)
		{
			StringBuilder strSql=new StringBuilder();
			strSql.Append("insert into T_Users(");
			strSql.Append("Account,Pwd,PFP,Assets,Points,Dist,Name,Sex,Phone,Address,state)");
			strSql.Append(" values (");
			strSql.Append("@Account,@Pwd,@PFP,@Assets,@Points,@Dist,@Name,@Sex,@Phone,@Address,@state)");
			SqlParameter[] parameters = {
					new SqlParameter("@Account", SqlDbType.NVarChar,20),
					new SqlParameter("@Pwd", SqlDbType.NVarChar,20),
					new SqlParameter("@PFP", SqlDbType.NVarChar,20),
					new SqlParameter("@Assets", SqlDbType.Money,8),
					new SqlParameter("@Points", SqlDbType.Int,4),
					new SqlParameter("@Dist", SqlDbType.NVarChar,5),
					new SqlParameter("@Name", SqlDbType.NVarChar,20),
					new SqlParameter("@Sex", SqlDbType.NVarChar,2),
					new SqlParameter("@Phone", SqlDbType.NVarChar,20),
					new SqlParameter("@Address", SqlDbType.NVarChar,100),
					new SqlParameter("@state", SqlDbType.Int,4)};
			parameters[0].Value = model.Account;
			parameters[1].Value = model.Pwd;
			parameters[2].Value = model.PFP;
			parameters[3].Value = model.Assets;
			parameters[4].Value = model.Points;
			parameters[5].Value = model.Dist;
			parameters[6].Value = model.Name;
			parameters[7].Value = model.Sex;
			parameters[8].Value = model.Phone;
			parameters[9].Value = model.Address;
			parameters[10].Value = model.state;

			int rows=DbHelperSQL.ExecuteSql(strSql.ToString(),parameters);
			if (rows > 0)
			{
				return true;
			}
			else
			{
				return false;
			}
		}
		/// <summary>
		/// 更新一条数据
		/// </summary>
		public bool Update(EShop.Model.T_Users model)
		{
			StringBuilder strSql=new StringBuilder();
			strSql.Append("update T_Users set ");
			strSql.Append("Account=@Account,");
			strSql.Append("Pwd=@Pwd,");
			strSql.Append("PFP=@PFP,");
			strSql.Append("Assets=@Assets,");
			strSql.Append("Points=@Points,");
			strSql.Append("Dist=@Dist,");
			strSql.Append("Name=@Name,");
			strSql.Append("Sex=@Sex,");
			strSql.Append("Phone=@Phone,");
			strSql.Append("Address=@Address,");
			strSql.Append("state=@state");
			strSql.Append(" where UserID=@UserID ");
			SqlParameter[] parameters = {
					new SqlParameter("@Account", SqlDbType.NVarChar,20),
					new SqlParameter("@Pwd", SqlDbType.NVarChar,20),
					new SqlParameter("@PFP", SqlDbType.NVarChar,20),
					new SqlParameter("@Assets", SqlDbType.Money,8),
					new SqlParameter("@Points", SqlDbType.Int,4),
					new SqlParameter("@Dist", SqlDbType.NVarChar,5),
					new SqlParameter("@Name", SqlDbType.NVarChar,20),
					new SqlParameter("@Sex", SqlDbType.NVarChar,2),
					new SqlParameter("@Phone", SqlDbType.NVarChar,20),
					new SqlParameter("@Address", SqlDbType.NVarChar,100),
					new SqlParameter("@state", SqlDbType.Int,4),
					new SqlParameter("@UserID", SqlDbType.BigInt,8)};
			parameters[0].Value = model.Account;
			parameters[1].Value = model.Pwd;
			parameters[2].Value = model.PFP;
			parameters[3].Value = model.Assets;
			parameters[4].Value = model.Points;
			parameters[5].Value = model.Dist;
			parameters[6].Value = model.Name;
			parameters[7].Value = model.Sex;
			parameters[8].Value = model.Phone;
			parameters[9].Value = model.Address;
			parameters[10].Value = model.state;
			parameters[11].Value = model.UserID;

			int rows=DbHelperSQL.ExecuteSql(strSql.ToString(),parameters);
			if (rows > 0)
			{
				return true;
			}
			else
			{
				return false;
			}
		}

		/// <summary>
		/// 删除一条数据
		/// </summary>
		public bool Delete(long UserID)
		{
			
			StringBuilder strSql=new StringBuilder();
			strSql.Append("delete from T_Users ");
			strSql.Append(" where UserID=@UserID ");
			SqlParameter[] parameters = {
					new SqlParameter("@UserID", SqlDbType.BigInt,8)			};
			parameters[0].Value = UserID;

			int rows=DbHelperSQL.ExecuteSql(strSql.ToString(),parameters);
			if (rows > 0)
			{
				return true;
			}
			else
			{
				return false;
			}
		}
		/// <summary>
		/// 批量删除数据
		/// </summary>
		public bool DeleteList(string UserIDlist )
		{
			StringBuilder strSql=new StringBuilder();
			strSql.Append("delete from T_Users ");
			strSql.Append(" where UserID in ("+UserIDlist + ")  ");
			int rows=DbHelperSQL.ExecuteSql(strSql.ToString());
			if (rows > 0)
			{
				return true;
			}
			else
			{
				return false;
			}
		}


		/// <summary>
		/// 得到一个对象实体
		/// </summary>
		public EShop.Model.T_Users GetModel(long UserID)
		{
			
			StringBuilder strSql=new StringBuilder();
			strSql.Append("select  top 1 UserID,Account,Pwd,PFP,Assets,Points,Dist,Name,Sex,Phone,Address,state from T_Users ");
			strSql.Append(" where UserID=@UserID ");
			SqlParameter[] parameters = {
					new SqlParameter("@UserID", SqlDbType.BigInt,8)			};
			parameters[0].Value = UserID;

			EShop.Model.T_Users model=new EShop.Model.T_Users();
			DataSet ds=DbHelperSQL.Query(strSql.ToString(),parameters);
			if(ds.Tables[0].Rows.Count>0)
			{
				return DataRowToModel(ds.Tables[0].Rows[0]);
			}
			else
			{
				return null;
			}
		}


		/// <summary>
		/// 得到一个对象实体
		/// </summary>
		public EShop.Model.T_Users DataRowToModel(DataRow row)
		{
			EShop.Model.T_Users model=new EShop.Model.T_Users();
			if (row != null)
			{
				if(row["UserID"]!=null && row["UserID"].ToString()!="")
				{
					model.UserID=long.Parse(row["UserID"].ToString());
				}
				if(row["Account"]!=null)
				{
					model.Account=row["Account"].ToString();
				}
				if(row["Pwd"]!=null)
				{
					model.Pwd=row["Pwd"].ToString();
				}
				if(row["PFP"]!=null)
				{
					model.PFP=row["PFP"].ToString();
				}
				if(row["Assets"]!=null && row["Assets"].ToString()!="")
				{
					model.Assets=decimal.Parse(row["Assets"].ToString());
				}
				if(row["Points"]!=null && row["Points"].ToString()!="")
				{
					model.Points=int.Parse(row["Points"].ToString());
				}
				if(row["Dist"]!=null)
				{
					model.Dist=row["Dist"].ToString();
				}
				if(row["Name"]!=null)
				{
					model.Name=row["Name"].ToString();
				}
				if(row["Sex"]!=null)
				{
					model.Sex=row["Sex"].ToString();
				}
				if(row["Phone"]!=null)
				{
					model.Phone=row["Phone"].ToString();
				}
				if(row["Address"]!=null)
				{
					model.Address=row["Address"].ToString();
				}
				if(row["state"]!=null && row["state"].ToString()!="")
				{
					model.state=int.Parse(row["state"].ToString());
				}
			}
			return model;
		}

		/// <summary>
		/// 获得数据列表
		/// </summary>
		public DataSet GetList(string strWhere)
		{
			StringBuilder strSql=new StringBuilder();
			strSql.Append("select UserID,Account,Pwd,PFP,Assets,Points,Dist,Name,Sex,Phone,Address,state ");
			strSql.Append(" FROM T_Users ");
			if(strWhere.Trim()!="")
			{
				strSql.Append(" where "+strWhere);
			}
			return DbHelperSQL.Query(strSql.ToString());
		}

		/// <summary>
		/// 获得前几行数据
		/// </summary>
		public DataSet GetList(int Top,string strWhere,string filedOrder)
		{
			StringBuilder strSql=new StringBuilder();
			strSql.Append("select ");
			if(Top>0)
			{
				strSql.Append(" top "+Top.ToString());
			}
			strSql.Append(" UserID,Account,Pwd,PFP,Assets,Points,Dist,Name,Sex,Phone,Address,state ");
			strSql.Append(" FROM T_Users ");
			if(strWhere.Trim()!="")
			{
				strSql.Append(" where "+strWhere);
			}
			strSql.Append(" order by " + filedOrder);
			return DbHelperSQL.Query(strSql.ToString());
		}

		/// <summary>
		/// 获取记录总数
		/// </summary>
		public int GetRecordCount(string strWhere)
		{
			StringBuilder strSql=new StringBuilder();
			strSql.Append("select count(1) FROM T_Users ");
			if(strWhere.Trim()!="")
			{
				strSql.Append(" where "+strWhere);
			}
			object obj = DbHelperSQL.GetSingle(strSql.ToString());
			if (obj == null)
			{
				return 0;
			}
			else
			{
				return Convert.ToInt32(obj);
			}
		}
		/// <summary>
		/// 分页获取数据列表
		/// </summary>
		public DataSet GetListByPage(string strWhere, string orderby, int startIndex, int endIndex)
		{
			StringBuilder strSql=new StringBuilder();
			strSql.Append("SELECT * FROM ( ");
			strSql.Append(" SELECT ROW_NUMBER() OVER (");
			if (!string.IsNullOrEmpty(orderby.Trim()))
			{
				strSql.Append("order by T." + orderby );
			}
			else
			{
				strSql.Append("order by T.UserID desc");
			}
			strSql.Append(")AS Row, T.*  from T_Users T ");
			if (!string.IsNullOrEmpty(strWhere.Trim()))
			{
				strSql.Append(" WHERE " + strWhere);
			}
			strSql.Append(" ) TT");
			strSql.AppendFormat(" WHERE TT.Row between {0} and {1}", startIndex, endIndex);
			return DbHelperSQL.Query(strSql.ToString());
		}

		/*
		/// <summary>
		/// 分页获取数据列表
		/// </summary>
		public DataSet GetList(int PageSize,int PageIndex,string strWhere)
		{
			SqlParameter[] parameters = {
					new SqlParameter("@tblName", SqlDbType.VarChar, 255),
					new SqlParameter("@fldName", SqlDbType.VarChar, 255),
					new SqlParameter("@PageSize", SqlDbType.Int),
					new SqlParameter("@PageIndex", SqlDbType.Int),
					new SqlParameter("@IsReCount", SqlDbType.Bit),
					new SqlParameter("@OrderType", SqlDbType.Bit),
					new SqlParameter("@strWhere", SqlDbType.VarChar,1000),
					};
			parameters[0].Value = "T_Users";
			parameters[1].Value = "UserID";
			parameters[2].Value = PageSize;
			parameters[3].Value = PageIndex;
			parameters[4].Value = 0;
			parameters[5].Value = 0;
			parameters[6].Value = strWhere;	
			return DbHelperSQL.RunProcedure("UP_GetRecordByPage",parameters,"ds");
		}*/

		#endregion  BasicMethod
		#region  ExtensionMethod

		#endregion  ExtensionMethod
	}
}

